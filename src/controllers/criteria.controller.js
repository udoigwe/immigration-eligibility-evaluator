const pool = require("../utils/dbConfig");

module.exports = {
    getAllCriteria: async (req, res, next) => {
        const {
            immigration_type_id,
            criteria_status
        } = req.query;

        const page = req.query.page ? parseInt(req.query.page) : null;
        const perPage = req.query.perPage ? parseInt(req.query.perPage) : null;

        let connection;

        let query = `
            SELECT * 
            FROM criteria
            WHERE 1 = 1
        `;
        const queryParams = [];

        let query2 = `
            SELECT COUNT(*) AS total_records 
            FROM criteria
            WHERE 1 = 1
        `;
        const queryParams2 = []

        if(immigration_type_id)
        {
            query += ' AND immigration_type_id = ?';
            queryParams.push(immigration_type_id);
            
            query2 += ' AND immigration_type_id = ?';
            queryParams2.push(immigration_type_id);
        }
        
        if(criteria_status)
        {
            query += ' AND criteria_status = ?';
            queryParams.push(criteria_status);
            
            query2 += ' AND criteria_status = ?';
            queryParams2.push(criteria_status);
        }

        query += ` ORDER BY criteria_id DESC`;

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

            //append criteria options to each criteria
            for(let i = 0; i < data.length; i++)
            {
                const criteria = data[i];

                //fetch all criteria options attached to this criteria
                const [ options ] = await connection.execute(`
                    SELECT *
                    FROM criteria_options
                    WHERE option_status = 'Active' 
                    AND criteria_id = ?`,
                    [ criteria.criteria_id ]
                )

                //attach criteria options to this criteria
                criteria.options = options;
            }

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
    getAllCriteriaOptions: async (req, res, next) => {
        const {
            criteria_id,
            option_status
        } = req.query;

        const page = req.query.page ? parseInt(req.query.page) : null;
        const perPage = req.query.perPage ? parseInt(req.query.perPage) : null;

        let connection;

        let query = `
            SELECT * 
            FROM criteria_options
            WHERE 1 = 1
        `;
        const queryParams = [];

        let query2 = `
            SELECT COUNT(*) AS total_records 
            FROM criteria_options
            WHERE 1 = 1
        `;
        const queryParams2 = []

        if(criteria_id)
        {
            query += ' AND criteria_id = ?';
            queryParams.push(criteria_id);
            
            query2 += ' AND criteria_id = ?';
            queryParams2.push(criteria_id);
        }
        
        if(option_status)
        {
            query += ' AND option_status = ?';
            queryParams.push(option_status);
            
            query2 += ' AND option_status = ?';
            queryParams2.push(option_status);
        }

        query += ` ORDER BY option_id DESC`;

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
    }
}