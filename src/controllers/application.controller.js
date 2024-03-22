const CustomError = require("../utils/CustomError");
const pool = require("../utils/dbConfig");
const { calculateAge } = require("../utils/functions");

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
        const loggedUser = req.userDecodedData;

        const {
            VisaCategoryID
        } = req.body;

        const suitableCountries = [];
        const benchMark = 20;
        let totalPoints = 0
        const userAge = calculateAge(loggedUser.date_of_birth.slice(0, 10));

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

            if(loggedUser.profile_completion_status === "Uncompleted")
            {
                throw new Error(400, "You must complete your profile before accessing this feature");
            }

            if(countries.length === 0)
            {
                throw new CustomError(404, "No countries found");
            }

            //iterate through all countries to get applicant score from profile
            for(let i = 0; i < countries.length; i++)
            {
                //instantiate one country
                const country = countries[i];
                let countryPoints = 0;

                const [ criteria ] = await connection.execute(`
                    SELECT a.*, b.*, c.CriterionName, d.CategoryName 
                    FROM countrycriteria a 
                    LEFT JOIN visacriteria b ON a.VisaCriteriaID = b.VisaCriteriaID 
                    LEFT JOIN criteria c ON b.CriterionID = c.CriterionID 
                    LEFT JOIN visacategories d ON b.VisaCategoryID = d.VisaCategoryID
                    WHERE b.VisaCategoryID = ?
                    AND a.CountryCode = ?`,
                    [ 
                        VisaCategoryID,
                        country.CountryCode
                    ]
                )

                for(let j = 0; j < criteria.length; j++)
                {
                    const criterion = criteria[j];

                    if(criterion.CriterionName === "Age")
                    {
                        if(criterion.CriteriaOptions === "18-21" && userAge >= 18 && userAge <= 21)
                        {
                            countryPoints += criterion.PointsValue;
                            totalPoints += criterion.PointsValue;
                        }
                        
                        if(criterion.CriteriaOptions === "22-25" && userAge >= 22 && userAge <= 25)
                        {
                            countryPoints += criterion.PointsValue;
                            totalPoints += criterion.PointsValue;
                        }
                        
                        if(criterion.CriteriaOptions === "26-30" && userAge >= 26 && userAge <= 30)
                        {
                            countryPoints += criterion.PointsValue;
                            totalPoints += criterion.PointsValue;
                        }
                        
                        if(criterion.CriteriaOptions === "36-Above" && userAge >= 36)
                        {
                            countryPoints += criterion.PointsValue;
                            totalPoints += criterion.PointsValue;
                        }
                    }

                    if(criterion.CriterionName === "Highest Education Level" && criterion.CriteriaOptions === loggedUser.education_level)
                    {
                        countryPoints += criterion.PointsValue;
                        totalPoints += criterion.PointsValue;
                    }

                    if(criterion.CriterionName === "Language Proficiency" && criterion.CriteriaOptions === loggedUser.language_proficiency)
                    {
                        countryPoints += criterion.PointsValue;
                        totalPoints += criterion.PointsValue;
                    }

                    if(criterion.CriterionName === "Work Experience")
                    {
                        if(criterion.CriteriaOptions === "1-2 years" && loggedUser.years_of_experience >= 1 && loggedUser.years_of_experience <= 2)
                        {
                            countryPoints += criterion.PointsValue;
                            totalPoints += criterion.PointsValue
                        }
                        
                        if(criterion.CriteriaOptions === "3-5 years" && loggedUser.years_of_experience >= 3 && loggedUser.years_of_experience <= 5)
                        {
                            countryPoints += criterion.PointsValue;
                            totalPoints += criterion.PointsValue;
                        }
                        
                        if(criterion.CriteriaOptions === "6-10 years" && loggedUser.years_of_experience >= 6 && loggedUser.years_of_experience <= 10)
                        {
                            countryPoints += criterion.PointsValue;
                            totalPoints += criterion.PointsValue
                        }
                        
                        if(criterion.CriteriaOptions === "11 years and above" && loggedUser.years_of_experience >= 11)
                        {
                            countryPoints += criterion.PointsValue;
                            totalPoints += criterion.PointsValue
                        }
                    }
                }

                const performance = {
                    country: country.CountryName,
                    score: countryPoints
                };

                if(countryPoints >= benchMark)
                {
                    suitableCountries.push(performance);
                }
            }

            res.json({
                error: false,
                suitableCountries
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