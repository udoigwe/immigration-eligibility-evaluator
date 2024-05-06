const CustomError = require("../utils/CustomError");
const pool = require("../utils/dbConfig");
const { calculateAge } = require("../utils/functions");

module.exports = {
    evaluate: async (req, res, next) => {
        const {
            CountryCode, 
            VisaCategoryID, 
            options
        } = req.body;

        const userID = req.userDecodedData.user_id;
        const now = Math.floor(Date.now() / 1000);
        let score = 0;
        let recommendations = [];
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

            //get eligibility threshold for the selected country and visacategoryID
            const [ thresholds ] = await connection.execute(`
                SELECT a.*, b.CountryName
                FROM eligibilitythreshold a
                LEFT JOIN countries b
                ON a.CountryCode = b.CountryCode
                WHERE a.CountryCode = ?
                AND a.VisaCategoryID = ?
                LIMIT 1`,
                [ CountryCode, VisaCategoryID ]
            );

            //check if threshold exists
            if(thresholds.length === 0)
            {
                throw new CustomError(404, "Threshold not found for the selected country and visa category");
            }

            const threshold = thresholds[0];

            //insert evaluation request
            const [ evaluation ] = await connection.execute(`
                INSERT INTO evaluations
                (
                    UserID,
                    ChoiceCountryCode,
                    ChoiceVisaCategoryID
                )
                VALUES (?, ?, ?)`,
                [ 
                    userID,
                    CountryCode,
                    VisaCategoryID
                ]
            );

            //get last inserID
            const evaluationID = evaluation.insertId;

            //iterate over options to get details of option IDs and insert into database
            for(let i = 0;  i < options.length; i++)
            {
                const option = options[i];

                //get option score
                const [ scores ] = await connection.execute(`
                    SELECT a.CountryCode, a.VisaCriteriaID, a.PointsValue, a.CriteriaOptions, b.CriterionID, b.VisaCategoryID, c.CriterionName, d.CategoryName, e.CountryName
                    FROM countrycriteria a 
                    LEFT JOIN visacriteria b ON a.VisaCriteriaID = b.VisaCriteriaID
                    LEFT JOIN criteria c ON b.CriterionID = c.CriterionID
                    LEFT JOIN visacategories d ON b.VisaCategoryID = d.VisaCategoryID
                    LEFT JOIN countries e ON a.CountryCode = e.CountryCode
                    WHERE a.CountryCriterionID = ?
                    LIMIT 1`,
                    [ option ]
                );

                const optionScore = parseInt(scores[0].PointsValue);

                //add this score to the global score
                score += optionScore;

                //get the max score for the selected option
                const [ max ] = await connection.execute(`
                    SELECT MAX(PointsValue) as maximun_points
                    FROM countrycriteria  
                    WHERE VisaCriteriaID = ? 
                    AND CountryCode = ? 
                    LIMIT 1`,
                    [ scores[0].VisaCriteriaID, scores[0].CountryCode ]
                );

                if(optionScore !== parseInt(max[0].maximun_points))
                {
                    const recommendation = /* scores[0].CriterionName === "Age" ? 
                    `We consider your age (${scores[0].CriteriaOptions}) a little bit inappropriate for the ${scores[0].CountryName} ${scores[0].CategoryName}` : */
                    scores[0].CriterionName === "Highest Education Level" ?
                    `Your highest educational level (${scores[0].CriteriaOptions}) is not so good for the ${scores[0].CountryName} ${scores[0].CategoryName}`:
                    scores[0].CriterionName === "Language Proficiency" ?
                    `Your language proficiency level (${scores[0].CriteriaOptions}) needs to be improved in order to increase your chances in getting the ${scores[0].CountryName} ${scores[0].CategoryName}`:
                    scores[0].CriterionName === "Work Experience" ?
                    `You need to improve your work experience in order to increase your eligibility for the ${scores[0].CountryName} ${scores[0].CategoryName}`:
                    scores[0].CriterionName === "Financial Resources" ?
                    `Your financial strength (${scores[0].CriteriaOptions}) needs to be improved to fetch you eligibility for the ${scores[0].CountryName} ${scores[0].CategoryName}`:
                    scores[0].CriterionName === "Job Offer from Local Employer" ?
                    `You should have a job offer from an employer in ${scores[0].CountryName} to be able to qualify for a ${scores[0].CategoryName}`:
                    scores[0].CriterionName === "Wage Offered" ?
                    `We sincerely think that ${scores[0].CriteriaOptions} as wage offered will not be enough to sustain you in ${scores[0].CountryName}. We encourage you to look for better opportunities in ${scores[0].CountryName}`:
                    scores[0].CriterionName === "H-1B Approval" ?
                    `If you dont have H-1B Approval, you might not be able to get the ${scores[0].CategoryName} in ${scores[0].CountryName}`:
                    max[0].CriterionName === "Occupational Skill level" ?
                    `Your Occupational Skill Level of ${scores[0].CriteriaOptions} needs to be improved to be able to land a ${scores[0].CategoryName} in ${scores[0].CountryName}`:
                    scores[0].CriterionName === "Health Exam Result" ?
                    `You need to have your Health Exam Results to qualify for a ${scores[0].CategoryName} in ${scores[0].CountryName}`:
                    scores[0].CriterionName === "Employer Sponsorship" ?
                    `Having an employer sponsirship will increase your chances for a ${scores[0].CategoryName} in ${scores[0].CountryName}`:
                    scores[0].CriterionName === "IELTS Score" ?
                    `Increasing your IELTS Score will increase your chances for a ${scores[0].CategoryName} in ${scores[0].CountryName}`: "";

                    recommendations.push(recommendation);
                }

                //insert candidate selected option into database
                await connection.execute(`
                    INSERT INTO usersubmissions
                    (
                        EvaluationID,
                        CountryCriterionID,
                        Score
                    )
                    VALUES (?, ?, ?)`,
                    [
                        evaluationID,
                        option,
                        optionScore
                    ]
                )
            }

            //check if there are other countries that match candidate's immigration eligibility score
            const [ Countries ] = await connection.execute(`
                SELECT a.*, b.CountryName
                FROM eligibilitythreshold a
                LEFT JOIN countries b
                ON a.CountryCode = b.CountryCode
                WHERE a.ThresholdPoint <= ?
                ORDER BY a.ThresholdPoint DESC
                LIMIT 1`,
                [ score ]
            );

            //generate report
            if(score >= parseInt(threshold.ThresholdPoint))
            {
                report += `Congratulations!!! You are eligible to immigrate to your choice country, <b>${threshold.CountryName}</b>. With a score of <b>${score}</b>, you match <b>${threshold.CountryName}</b> with a threshold point of <b>${threshold.ThresholdPoint}</b>
                `
            }

            else if(Countries.length > 0)
            {
                let countriesHTML = '<br/>';
                let recommendationsHTML = "<ol>";

                for(let i = 0; i < Countries.length; i++)
                {
                    const Country = Countries[i];
                    countriesHTML += `
                        <b>${Country.CountryName}</b><br/>
                    `
                }

                for(let i = 0; i < recommendations.length; i++)
                {
                    const r = recommendations[i];
                    recommendationsHTML += `
                        <li>${r}</li>
                    `
                }

                recommendationsHTML += `</ol>`;

                report += `Sorry!!! You are not eligible to immigrate to <b>${threshold.CountryName}</b>. With a score of <b>${score}</b> you do not make up to ${threshold.ThresholdPoint} which is the threshold point to qualify. However, we have good news!!! You qualify to immigrate to the following countries ${countriesHTML}<br/><br/><b>REASONS & RECOMMENDATIONS</b><br/>${recommendationsHTML}
                `;
            }

            else
            {
                let recommendationsHTML = "<ol>";

                for(let i = 0; i < recommendations.length; i++)
                {
                    const r = recommendations[i];
                    recommendationsHTML += `
                        <li>${r}</li>
                    `
                }

                recommendationsHTML += `</ol>`;

                report += `Sorry!!! With a score of <b>${score}</b>, you do not qualify to immigrate to <b>${threshold.CountryName}</b> or any of the available countries. Please work on your profile and come back later.<br/><br/><b>REASONS & RECOMMENDATIONS</b><br/>${recommendationsHTML}
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

        const issuLogs = [];
        const suitableCountries = [];
        const benchMark = 20;
        let totalPoints = 0

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

            //fetch user profile
            const [ profiles ] = await connection.execute(`
                SELECT * FROM personalinformation
                WHERE user_id = ?
                LIMIT 1`,
                [ loggedUser.userID ]
            );

            if(profiles.length === 0)
            {
                throw new CustomError(400, "You must complete your profile before accessing this feature");
            }

            if(loggedUser.profile_completion_status === "Uncompleted")
            {
                throw new CustomError(400, "You must complete your profile before accessing this feature");
            }

            if(countries.length === 0)
            {
                throw new CustomError(404, "No countries found");
            }

            const userAge = calculateAge(loggedUser.date_of_birth.slice(0, 10));

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

                    //select the maximum possible score for this criterion, country and visa category
                    const [ maxScore ] = await connection.execute(`
                        SELECT MAX(PointsValue) AS MaxPoint, VisaCategoryID, CriterionID, CountryCode 
                        FROM ( 
                            SELECT a.*, b.CriterionID, b.VisaCategoryID, c.CriterionName, d.CategoryName 
                            FROM countrycriteria a 
                            LEFT JOIN visacriteria b ON a.VisaCriteriaID = b.VisaCriteriaID 
                            LEFT JOIN criteria c ON b.CriterionID = c.CriterionID 
                            LEFT JOIN visacategories d ON b.VisaCategoryID = d.VisaCategoryID 
                        )X 
                        WHERE CountryCode = ? 
                        AND VisaCategoryID = ? 
                        AND CriterionID = ?`,
                        [ criterion.CountryCode, criterion.VisaCategoryID, criterion.CriterionID]

                    );
                    const maxscore = parseInt(maxScore[0].MaxPoint);

                    if(criterion.CriterionName === "Age")
                    {
                        if(criterion.CriteriaOptions === "18-21" && userAge >= 18 && userAge <= 21)
                        {
                            countryPoints += criterion.PointsValue;
                            totalPoints += criterion.PointsValue;

                            if(maxscore !== criterion.PointsValue && !issuLogs.includes("Age"))
                            {
                                issuLogs.push("Age")
                            }
                        }
                        
                        if(criterion.CriteriaOptions === "22-25" && userAge >= 22 && userAge <= 25)
                        {
                            countryPoints += criterion.PointsValue;
                            totalPoints += criterion.PointsValue;

                            if(maxscore !== criterion.PointsValue && !issuLogs.includes("Age"))
                            {
                                issuLogs.push("Age")
                            }
                        }
                        
                        if(criterion.CriteriaOptions === "26-30" && userAge >= 26 && userAge <= 30)
                        {
                            countryPoints += criterion.PointsValue;
                            totalPoints += criterion.PointsValue;

                            if(maxscore !== criterion.PointsValue && !issuLogs.includes("Age"))
                            {
                                issuLogs.push("Age")
                            }
                        }
                        
                        if(criterion.CriteriaOptions === "36-Above" && userAge >= 36)
                        {
                            countryPoints += criterion.PointsValue;
                            totalPoints += criterion.PointsValue;

                            if(maxscore !== criterion.PointsValue && !issuLogs.includes("Age"))
                            {
                                issuLogs.push("Age")
                            }
                        }
                    }

                    if(criterion.CriterionName === "Highest Education Level" && criterion.CriteriaOptions === loggedUser.education_level)
                    {
                        countryPoints += criterion.PointsValue;
                        totalPoints += criterion.PointsValue;

                        if(maxscore !== criterion.PointsValue && !issuLogs.includes("Highest Education Level"))
                        {
                            issuLogs.push("Highest Education Level")
                        }
                    }

                    if(criterion.CriterionName === "Language Proficiency" && criterion.CriteriaOptions === loggedUser.language_proficiency)
                    {
                        countryPoints += criterion.PointsValue;
                        totalPoints += criterion.PointsValue;

                        if(maxscore !== criterion.PointsValue && !issuLogs.includes("Language Proficiency"))
                        {
                            issuLogs.push("Language Proficiency")
                        }
                    }

                    if(criterion.CriterionName === "Work Experience")
                    {
                        if(criterion.CriteriaOptions === "1-2 years" && loggedUser.years_of_experience >= 1 && loggedUser.years_of_experience <= 2)
                        {
                            countryPoints += criterion.PointsValue;
                            totalPoints += criterion.PointsValue

                            if(maxscore !== criterion.PointsValue && !issuLogs.includes("Work Experience"))
                            {
                                issuLogs.push("Work Experience")
                            }
                        }
                        
                        if(criterion.CriteriaOptions === "3-5 years" && loggedUser.years_of_experience >= 3 && loggedUser.years_of_experience <= 5)
                        {
                            countryPoints += criterion.PointsValue;
                            totalPoints += criterion.PointsValue;

                            if(maxscore !== criterion.PointsValue && !issuLogs.includes("Work Experience"))
                            {
                                issuLogs.push("Work Experience")
                            }
                        }
                        
                        if(criterion.CriteriaOptions === "6-10 years" && loggedUser.years_of_experience >= 6 && loggedUser.years_of_experience <= 10)
                        {
                            countryPoints += criterion.PointsValue;
                            totalPoints += criterion.PointsValue

                            if(maxscore !== criterion.PointsValue && !issuLogs.includes("Work Experience"))
                            {
                                issuLogs.push("Work Experience")
                            }
                        }
                        
                        if(criterion.CriteriaOptions === "11 years and above" && loggedUser.years_of_experience >= 11)
                        {
                            countryPoints += criterion.PointsValue;
                            totalPoints += criterion.PointsValue

                            if(maxscore !== criterion.PointsValue && !issuLogs.includes("Work Experience"))
                            {
                                issuLogs.push("Work Experience")
                            }
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
                suitableCountries,
                issuLogs
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