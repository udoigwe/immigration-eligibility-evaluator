const pool = require("../utils/dbConfig");
const jwt = require("jsonwebtoken");
const moment = require("moment");
const CustomError = require("../utils/CustomError");

module.exports = {
    signUp: async (req, res, next) => {
        const {
            first_name,
            last_name,
            dob,
            gender,
            email,
            nationality,
            password
        } = req.body;

        const now = Math.floor(Date.now() / 1000);

        let connection;

        try
        {
            // Get a connection from the pool
            connection = await pool.getConnection();

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
                        dob,
                        gender,
                        email,
                        nationality,
                        password,
                        created_at
                    )
                    VALUES (?, ?, ?, ?, ?, ?, ?, ?)
                `,
                [
                    first_name,
                    last_name,
                    dob,
                    gender,
                    email,
                    nationality,
                    password,
                    now
                ]
            );

            res.json({
                error: false,
                message: "Sign up successful"
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
                SELECT * FROM users
                WHERE email = ? AND password = ?
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
    }
}