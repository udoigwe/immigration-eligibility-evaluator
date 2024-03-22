const pool = require("../utils/dbConfig");
const jwt = require("jsonwebtoken");
const moment = require("moment");
const CustomError = require("../utils/CustomError");
const { sendMail, uuidv4 } = require("../utils/functions");
const { otpHTML, recoveryHTML } = require("../utils/emailTemplates");

module.exports = {
    signUp: async (req, res, next) => {
        const {
            first_name,
            last_name,
            email,
            password
        } = req.body;

        const now = Math.floor(Date.now() / 1000);
        const randomNumber = Math.floor(1000 + Math.random() * 9000);

        let connection;

        try
        {
            // Get a connection from the pool
            connection = await pool.getConnection();

            //start db transaction
            await connection.beginTransaction();

            //check if email already exists
            const [ users ] = await connection.execute(`
                SELECT * FROM users WHERE email = ?
                LIMIT 1`,
                [ email ]
            );

            if(users.length > 0)
            {
                throw new CustomError(400, "Email already exists");
            }

            //add user to database
            await connection.execute(
                `
                    INSERT INTO users
                    (
                        first_name,
                        last_name,
                        email,
                        password,
                        otp,
                        created_at
                    )
                    VALUES (?, ?, ?, ?, ?, ?)
                `,
                [
                    first_name,
                    last_name,
                    email,
                    password,
                    randomNumber,
                    now
                ]
            );

            //generate html email template
            const emailTemplate = otpHTML(email, randomNumber.toString());

            //send otp
            await sendMail(email, "Email Verification", emailTemplate);

            //start db commit
            await connection.commit();

            res.json({
                error: false,
                message: `A verification email with an OTP has been sent to ${email}`
            })
        }
        catch(e)
        {
            connection ? connection.rollback() : null;

            next(e);
        }
        finally
        {
            connection ? connection.release() : null;
        }
    },
    signin: async (req, res, next) => {
        const {
            email,
            password
        } = req.body;

        let connection;

        try
        {
            // Get a connection from the pool
            connection = await pool.getConnection();

            //check if user exists
            const [ users ] = await connection.execute(`
                SELECT a.*, b.* 
                FROM users a
                LEFT JOIN personalinformation b
                ON a.userID = b.user_id
                WHERE a.email = ? AND a.password = ?
                LIMIT 1`,
                [ email, password ]
            );

            if(users.length === 0)
            {
                throw new CustomError(404, "Invalid credentials");
            }

            //check user status
            if(users[0].user_status === "Inactive")
            {
                throw new CustomError(400, "Your account is currently deactivated")
            }

            const user = users[0];

            //remove password from user object before encryption
            const { password:user_password, ...rest } = user;

            //create user token
            const token = jwt.sign(rest, process.env.JWT_SECRET, { expiresIn: 60 * 60 * 24 * 7 });

            res.json({
                error: false,
                user: rest,
                token,
                message: "Welcome on board",
            });
        }
        catch(e)
        {
            next(e)
        }
        finally
        {
            connection ? connection.release() : null;
        }
    },
    sendPasswordRecoveryMail: async (req, res, next) => {
        const {
            email
        } = req.body;

        const salt = uuidv4();

        let connection;

        try
        {
            // Get a connection from the pool
            connection = await pool.getConnection();

            //start db transaction
            await connection.beginTransaction();

            //check if user exists
            const [ users ] = await connection.execute(`
                SELECT * FROM users
                WHERE email = ?
                LIMIT 1`,
                [ email ]
            );

            if(users.length === 0)
            {
                throw new CustomError(404, "User not found");
            }

            //insert salt into database
            await connection.execute(`
                UPDATE users
                SET
                    salt = ?
                WHERE email = ?`,
                [ salt, email ]
            );

            //generate html email template
            const emailTemplate = recoveryHTML(email, salt);

            //send otp
            await sendMail(email, "Password Recovery", emailTemplate);

            //start db commit
            await connection.commit();

            res.json({
                error: false,
                message: `A Password Recovery email has been sent to ${email}`
            })
        }
        catch(e)
        {
            next(e)
        }
        finally
        {
            connection ? connection.release() : null;
        }
    },
    resendOTP: async (req, res, next) => {
        const {
            email
        } = req.body;

        const randomNumber = Math.floor(1000 + Math.random() * 9000);
        let connection;
        
        try
        {
            //instantiate db
            connection = await pool.getConnection();

            //start db transaction
            await connection.beginTransaction();

            //check if email exists
            const [ users ] = await connection.execute(`
                SELECT *
                FROM users
                WHERE email = ?
                LIMIT 1`,
                [ email ]
            );

            if(users.length === 0)
            {
                throw new CustomError(400, "User does not exist.");
            }

            //update otp into database
            await connection.execute(`
                UPDATE users
                SET
                    otp = ?
                WHERE email = ?`,
                [
                    randomNumber,
                    email
                ]
            );

            //generate html email template
            const emailTemplate = otpHTML(email, randomNumber.toString());

            //send email
            //await sendMail(process.env.AWS_SES_NO_REPLY_SENDER, [ email ], 'Email Verification', emailTemplate);
            await sendMail(email, "Email Verification", emailTemplate);

            //commit db
            await connection.commit();

            res.json({
                error: false,
                message: `OTP has been resent to ${email}`
            })
        }
        catch(e)
        {
            next(e)
        }
        finally
        {
            connection ? connection.release() : null;
        }
    },
    verifyAccount: async (req, res, next) => {
        const {
            email,
            otp
        } = req.body;

        let connection;

        try
        {
            //instantiate db
            connection = await pool.getConnection();

            //check if email exists
            const [ users ] = await connection.execute(`
                SELECT *
                FROM users
                WHERE email = ?
                LIMIT 1`,
                [ email ]
            );

            if(users.length === 0)
            {
                throw new CustomError(400, "User does not exist.");
            }

            //check if otp provided matches stored otp
            if(users[0].otp !== otp)
            {
                throw new CustomError(400, "Invalid OTP provided. Please try again")
            }

            //activate and verify user
            await connection.execute(`
                UPDATE users
                SET
                    user_status = 'Active',
                    otp = NULL
                WHERE email = ?`,
                [ email ]
            );

            res.json({
                error: false,
                message: 'Account verified successfully'
            })
        }
        catch(e)
        {
            next(e);
        }
        finally
        {
            connection ? connection.release() : null;
        }
    },
    changePassword: async (req, res, next) => {
        const {
            email,
            salt,
            password,
        } = req.body;

        let connection;

        try
        {
            //instantiate db
            connection = await pool.getConnection();

            //check if email exists
            const [ users ] = await connection.execute(`
                SELECT *
                FROM users
                WHERE email = ?
                LIMIT 1`,
                [ email ]
            );

            if(users.length === 0)
            {
                throw new CustomError(400, "User does not exist.");
            }

            //check if salt provided matches stored salt
            if(users[0].salt !== salt)
            {
                throw new CustomError(400, "Invalid request")
            }

            //change user password
            await connection.execute(`
                UPDATE users
                SET
                    password = ?,
                    salt = NULL
                WHERE email = ?`,
                [ password, email ]
            );

            res.json({
                error: false,
                message: 'Password changed successfully'
            })
        }
        catch(e)
        {
            next(e);
        }
        finally
        {
            connection ? connection.release() : null;
        }
    },
    profileUpdate: async (req, res, next) => {
        const userID = req.userDecodedData.userID;

        const {
            gender,
            date_of_birth,
            nationality,
            marital_status,
            education_level,
            years_of_experience,
            language_proficiency
        } = req.body;

        let connection;

        try
        {
            // Get a connection from the pool
            connection = await pool.getConnection();

            //start db transaction
            await connection.beginTransaction();

            //check if user profile exists
            const [ profiles ] = await connection.execute(`
                SELECT * FROM personalinformation
                WHERE user_id = ? 
                LIMIT 1`,
                [ userID ]
            );

            if(profiles.length === 0)
            {
                //user profile information does not exist. Create a new one
                await connection.execute(`
                    INSERT INTO personalinformation
                    (
                        user_id,
                        gender,
                        date_of_birth,
                        nationality,
                        marital_status,
                        education_level,
                        years_of_experience,
                        language_proficiency
                    )
                    VALUES (?, ?, ?, ?, ?, ?, ?, ?)`,
                    [
                        userID,
                        gender,
                        date_of_birth,
                        nationality,
                        marital_status,
                        education_level,
                        years_of_experience,
                        language_proficiency
                    ]
                )
            }

            if(profiles.length > 0)
            {
                //user has profile already. Update profile
                await connection.execute(`
                    UPDATE personalinformation
                    SET 
                        gender = ?,
                        date_of_birth = ?,
                        nationality = ?,
                        marital_status = ?,
                        education_level = ?,
                        years_of_experience = ?,
                        language_proficiency = ?
                    WHERE user_id = ?`,
                    [
                        gender,
                        date_of_birth,
                        nationality,
                        marital_status,
                        education_level,
                        years_of_experience,
                        language_proficiency,
                        userID
                    ]
                )
            }

            //update user profile completion status
            await connection.execute(`
                UPDATE users
                SET 
                    profile_completion_status = 'Completed'
                WHERE userID = ?`,
                [ userID ]
            )

            //get current user details
            const [ users ] = await connection.execute(`
                SELECT a.*, b.* 
                FROM users a
                LEFT JOIN personalinformation b
                ON a.userID = b.user_id
                WHERE a.userID = ?
                LIMIT 1`,
                [ userID ]
            )

            const user = users[0];

            //commit to db
            await connection.commit();

            //remove password from user object before encryption
            const { password, ...rest } = user;

            //create user token
            const token = jwt.sign(rest, process.env.JWT_SECRET, { expiresIn: 60 * 60 * 24 * 7 });

            res.json({
                error: false,
                message: "User Profile Updated successfully",
                token,
            });
        }
        catch(e)
        {
            connection ? await connection.rollback() : null;
            next(e)
        }
        finally
        {
            connection ? connection.release() : null;
        }
    },
    resetPassword: async (req, res, next) => {
        const loggedUser = req.userDecodedData;

        const {
            current_password,
            new_password
        } = req.body;

        let connection;

        try
        {
            //instantiate db
            connection = await pool.getConnection();

            //get current password
            const [ users ] = await connection.execute(`
                SELECT password
                FROM users
                WHERE userID = ?
                LIMIT 1`,
                [ loggedUser.userID ]
            );

            if(users.length === 0)
            {
                throw new CustomError(404, "User not found");
            }

            const password = users[0].password;

            //check if current password is equal to stored password
            if(current_password !== password)
            {
                throw new CustomError(400, "Your current password must be same with the stored password")
            }

            //update password
            await connection.execute(`
                UPDATE users
                SET
                    password = ?
                WHERE userID = ?`,
                [ 
                    new_password,
                    loggedUser.userID
                ]
            );

            res.json({
                error: false,
                message: "Password updated successfully"
            })
        }
        catch(e)
        {
            next(e);
        }
        finally
        {
            connection ? connection.release() : null;
        }
    }
}