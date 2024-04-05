const CustomError = require("../utils/CustomError");
const pool = require("../utils/dbConfig");

module.exports = {
    getCountries: async (req, res, next) => {

        const page = req.query.page ? parseInt(req.query.page) : null;
        const perPage = req.query.perPage ? parseInt(req.query.perPage) : null;

        let connection;

        let query = `
            SELECT * 
            FROM countries
            ORDER BY CountryName ASC
        `;
        const queryParams = [];

        let query2 = `
            SELECT COUNT(*) AS total_records 
            FROM countries
            ORDER BY CountryName ASC
        `;
        const queryParams2 = []

        if(page && perPage)
        {
            const offset = (page - 1) * perPage;
            query += ` LIMIT ?, ?`;
            queryParams.push(offset);
            queryParams.push(perPage);
        }

        try
        {
            // Get a connection from the pool
            connection = await pool.getConnection();

            const [ data ] = await connection.execute(query, queryParams);
            const [ total ] = await connection.execute(query2, queryParams2);

            //total records
            const totalRecords = parseInt(total[0].total_records);

            // Calculate total pages if perPage is specified
            const totalPages = perPage ? Math.ceil(totalRecords / perPage) : null;

            // Calculate next and previous pages based on provided page and totalPages
            const nextPage = page && totalPages && page < totalPages ? page + 1 : null;
            const prevPage = page && page > 1 ? page - 1 : null;

            res.json({
                error: false,
                data,
                paginationData: {
                    totalRecords,
                    totalPages,
                    currentPage: page,
                    itemsPerPage: perPage,
                    nextPage,
                    prevPage
                }
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
    getVisaCategories: async (req, res, next) => {

        const page = req.query.page ? parseInt(req.query.page) : null;
        const perPage = req.query.perPage ? parseInt(req.query.perPage) : null;

        let connection;

        let query = `
            SELECT * 
            FROM visacategories
            ORDER BY CategoryName ASC
        `;
        const queryParams = [];

        let query2 = `
            SELECT COUNT(*) AS total_records 
            FROM visacategories
            ORDER BY CategoryName ASC
        `;
        const queryParams2 = []

        if(page && perPage)
        {
            const offset = (page - 1) * perPage;
            query += ` LIMIT ?, ?`;
            queryParams.push(offset);
            queryParams.push(perPage);
        }

        try
        {
            // Get a connection from the pool
            connection = await pool.getConnection();

            const [ data ] = await connection.execute(query, queryParams);
            const [ total ] = await connection.execute(query2, queryParams2);

            //total records
            const totalRecords = parseInt(total[0].total_records);

            // Calculate total pages if perPage is specified
            const totalPages = perPage ? Math.ceil(totalRecords / perPage) : null;

            // Calculate next and previous pages based on provided page and totalPages
            const nextPage = page && totalPages && page < totalPages ? page + 1 : null;
            const prevPage = page && page > 1 ? page - 1 : null;

            res.json({
                error: false,
                data,
                paginationData: {
                    totalRecords,
                    totalPages,
                    currentPage: page,
                    itemsPerPage: perPage,
                    nextPage,
                    prevPage
                }
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
    /* getCountryVisaCriteria: async (req, res, next) => {
        const {
            country_code:CountryCode,
            visa_category_id:VisaCategoryID
        } = req.params;

        let connection;

        try
        {
            //instantiate db connection
            connection = await pool.getConnection();

            //fetch visa criteria
            const [ criteria ] = await connection.execute(`
                SELECT
                    a.*,
                    b.CategoryName,
                    c.CriterionName,
                    c.CriterionQuestion
                FROM 
                    visacriteria a
                LEFT JOIN 
                    visacategories b
                ON 
                    a.VisaCategoryID = b.VisaCategoryID
                LEFT JOIN
                    criteria c
                ON 
                    a.CriterionID = c.CriterionID
                WHERE
                    a.VisaCategoryID = ?`,
                [ VisaCategoryID ]
            );

            //check if visa criteria exists for the Visa Category
            if(criteria.length === 0)
            {
                throw new CustomError(404, "No visa criteria found for the selected visa category");
            }

            //get all visa criteria options for each criteria and for selected country
            for(let i = 0; i < criteria.length; i++)
            {
                const criterion = criteria[i];

                //fetch all country criteria related to visa category
                const [ CC ] = await connection.execute(`
                    SELECT *
                    FROM countrycriteria
                    WHERE CountryCode = ?
                    AND VisaCriteriaID = ?`,
                    [ CountryCode, criterion.VisaCriteriaID ]
                )

                //attach country criteria options to criterion
                criterion.options = CC;
            }

            res.json({
                error: false,
                criteria
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
    }, */
    getCountryVisaCriteria: async (req, res, next) => {
        const {
            country_code:CountryCode,
            visa_category_id:VisaCategoryID
        } = req.params;

        const Criteria = [];

        let connection;

        try
        {
            //instantiate db connection
            connection = await pool.getConnection();

            //fetch visa criteria by country code and visa category
            const [ criteriaIDs] = await connection.execute(`
                SELECT DISTINCT(CriterionID) AS criteria FROM 
                (
                    SELECT a.*, b.CriterionID, c.CriterionName, c.CriterionQuestion FROM countrycriteria a
                    LEFT JOIN visacriteria b ON a.VisaCriteriaID = b.VisaCriteriaID
                    LEFT JOIN criteria c ON b.CriterionID = c.CriterionID

                    WHERE a.CountryCode = ? AND b.VisaCategoryID = ?
                )X`,
                [ CountryCode, VisaCategoryID  ]
            );

            //check if visa criteriaIDs exists for the Visa Category AND country code
            if(criteriaIDs.length === 0)
            {
                throw new CustomError(404, "No visa criteria found for the selected visa category & country");
            }

            //get all visa category details for each returned criteriaID
            for(let i = 0; i < criteriaIDs.length; i++)
            {
                const criterionID = criteriaIDs[i];

                //fetch visa criterion details including question and name
                const [ criteria ] = await connection.execute(`
                    SELECT *
                    FROM 
                        criteria
                    WHERE
                        CriterionID = ?
                    LIMIT 1`,
                    [ criterionID.criteria ]
                )

                //check if criteria exists
                if(criteria.length === 0)
                {
                    throw new CustomError(404, `Criterion with ID ${criterionID} does not exist`);
                }

                const criterion = criteria[0];

                //fetch criterion options
                const [ options] = await connection.execute(`
                    SELECT a.*, b.CriterionID, c.CriterionName, c.CriterionQuestion FROM countrycriteria a
                    LEFT JOIN visacriteria b ON a.VisaCriteriaID = b.VisaCriteriaID
                    LEFT JOIN criteria c ON b.CriterionID = c.CriterionID

                    WHERE b.CriterionID = ? AND a.CountryCode = ? AND b.VisaCategoryID = ?`,
                    [ criterion.CriterionID, CountryCode, VisaCategoryID  ]
                );

                //attach country criteria options to criterion
                criterion.options = options;
                //dump this criterion into the central criteria
                Criteria.push(criterion);
            }

            res.json({
                error: false,
                criteria:Criteria
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