const CustomError = require("../utils/CustomError");
const pool = require("../utils/dbConfig");

module.exports = {
    apply: async (req, res, next) => {
        const {
            country_id, 
            immigration_type_id, 
            options
        } = req.body;

        const userID = req.userDecodedData.user_id;
        const now = Math.floor(Date.now() / 1000);
        let score = 0;
        let report = '';

        let connection;

        try
        {
            // Get a connection from the pool
            connection = await pool.getConnection();

            //created a database transaction
            await connection.beginTransaction();

            //check if options is empty
            if(options.length === 0)
            {
                throw new CustomError(400, "No Criteria Options selected");
            }

            //get details of selected country
            const [ countries ] = await connection.execute(`
                SELECT *
                FROM countries
                WHERE country_id = ?
                LIMIT 1`,
                [ country_id ]
            );

            //check if country exists
            if(countries.length === 0)
            {
                throw new CustomError(404, "Country not found");
            }

            const country = countries[0];

            //insert application
            const [ insert ] = await connection.execute(`
                INSERT INTO applications
                (
                    country_id,
                    applicant_id,
                    immigration_type_id,
                    created_at
                )
                VALUES (?, ?, ?, ?)`,
                [ 
                    country_id,
                    userID,
                    immigration_type_id,
                    now
                ]
            );

            //get last inserID
            const applicationID = insert.insertId;

            //iterate over options to get details of option IDs and insert into database
            for(let i = 0;  i < options.length; i++)
            {
                const option = options[i];

                //get option score
                const [ scores ] = await connection.execute(`
                    SELECT score
                    FROM criteria_options
                    WHERE option_id = ?
                    LIMIT 1`,
                    [ option ]
                );

                const optionScore = parseInt(scores[0].score);

                //add this score to the global score
                score += optionScore;

                //insert candidate selected option into database
                await connection.execute(`
                    INSERT INTO applicant_selections
                    (
                        application_id,
                        applicant_id,
                        option_id,
                        score,
                        created_at
                    )
                    VALUES (?, ?, ?, ?, ?)`,
                    [
                        applicationID,
                        userID,
                        option,
                        optionScore,
                        now
                    ]
                )
            }

            //check if there are other countries that matches candidate's immigration eligibility score
            const [ Countries ] = await connection.execute(`
                SELECT *
                FROM countries
                WHERE min_score <= ?
                AND max_score >= ?
                ORDER BY max_score DESC
                LIMIT 1`,
                [ score, score ]
            );

            //generate report
            if(score >= parseInt(country.min_score))
            {
                report += `Congratulations!!! You are eligible to immigrate to your choice country, ${country.country_name}. With a score of ${score}, you match ${country.country_name} with a minimum expected score of ${country.min_score}
                `
            }

            else if(Countries.length > 0)
            {
                const Country = Countries[0];

                report += `Sorry!!! You are not eligible to immigrate to ${country.country_name}. With a score of ${score} you do not make up to ${country.min_score} which is the minimum score to qualify. However, we have good news!!! You qualify to immigrate to ${Country.country_name} with a minimum expected score of ${Country.min_score}
                `;
            }

            else
            {
                report += `Sorry!!! With a score of ${score}, you do not qualify to immigrate to any of the underlisted countries. Please work on your profile and come back later.
                `
            }

            //commit transaction
            await connection.commit();

            res.json({
                error: false,
                message: report
            })
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
    findSuitableCountries: async (req, res, next) => {
        const {
            visaCategoryID
        } = req.body;

        const suitableCountries = [];

        let connection;

        try
        {
            //instantiate db connection
            connection = await pool.getConnection();

            //get all available countries
            const [ countries ] = await connection.execute(`
                SELECT *
                FROM countries
                ORDER BY CountryName ASC`,
            );

            if(countries.length === 0)
            {
                throw new CustomError(404, "No countries found");
            }

            //iterate through all countries to get applicant score from profile
            for(let i = 0; i < countries.length; i++)
            {
                const country = countries[i];
            }
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