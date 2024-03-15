const pool = require("../utils/dbConfig");

module.exports = {
    getCountries: async (req, res, next) => {
        const {
            status
        } = req.query;

        const page = req.query.page ? parseInt(req.query.page) : null;
        const perPage = req.query.perPage ? parseInt(req.query.perPage) : null;

        let connection;

        let query = `
            SELECT * 
            FROM countries
            WHERE 1 = 1
        `;
        const queryParams = [];

        let query2 = `
            SELECT COUNT(*) AS total_records 
            FROM countries
            WHERE 1 = 1
        `;
        const queryParams2 = []

        if(status)
        {
            query += ' AND country_status = ?';
            queryParams.push(status);
            
            query2 += ' AND country_status = ?';
            queryParams2.push(status);
        }

        query += ` ORDER BY country_name ASC`;

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