const CustomError = require("../utils/CustomError");
const pool = require("../utils/dbConfig");

module.exports = {
    createPost: async (req, res, next) => {
        const loggedUser = req.userDecodedData;
        const {
            post,
            post_category_id
        } = req.body;

        const now = Math.floor(Date.now() / 1000);

        let connection;

        try
        {
            // Get a connection from the pool
            connection = await pool.getConnection();

            //add user to database
            await connection.execute(
                `
                    INSERT INTO posts
                    (
                        author_id,
                        post,
                        post_category_id,
                        created_at
                    )
                    VALUES (?, ?, ?, ?)
                `,
                [
                    loggedUser.userID,
                    post,
                    post_category_id,
                    now
                ]
            );

            res.json({
                error: false,
                message: `Post submitted successfully`
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
    getPosts: async (req, res, next) => {
        const {
            author_id,
            post_category_id
        } = req.query;

        const page = req.query.page ? parseInt(req.query.page) : null;
        const perPage = req.query.perPage ? parseInt(req.query.perPage) : null;

        let connection;

        let query = `
            SELECT a.*, b.first_name, b.last_name 
            FROM posts a
            LEFT JOIN users b ON a.author_id = b.userID
            WHERE 1 = 1
        `;
        const queryParams = [];

        let query2 = `
            SELECT COUNT(*) AS total_records 
            FROM (
                SELECT a.*, b.first_name, b.last_name 
                FROM posts a
                LEFT JOIN users b ON a.author_id = b.userID
            )X
            WHERE 1 = 1
        `;
        const queryParams2 = []

        if(author_id)
        {
            query += ' AND a.author_id = ?';
            queryParams.push(author_id);
            
            query2 += ' AND X.author_id = ?';
            queryParams2.push(author_id);
        }
        
        if(post_category_id)
        {
            query += ' AND a.post_category_id = ?';
            queryParams.push(post_category_id);
            
            query2 += ' AND X.post_category_id = ?';
            queryParams2.push(post_category_id);
        }

        query += ` ORDER BY a.post_id DESC`;

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

            //append replies to each post
            for(let i = 0; i < data.length; i++)
            {
                const post = data[i];

                //fetch all replies to this post
                const [ replies ] = await connection.execute(`
                    SELECT a.*, b.post_id, c.first_name, c.last_name
                    FROM post_replies a
                    LEFT JOIN posts b ON a.post_id = b.post_id
                    LEFT JOIN users c ON a.author_id = c.userID 
                    WHERE a.post_id = ?
                    ORDER BY a.post_reply_id DESC`,
                    [ post.post_id ]
                );

                //count all likes for this post
                /* const [ likes ] = await connection.execute(`
                    SELECT COUNT(*) AS total_likes
                    FROM post_likes
                    WHERE post_id = ?`,
                    [ post.post_id]
                ) */

                //attach replies and likes to this post
                post.replies = replies;
                //post.likes = likes[0].total_likes;
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
    getPostCategories: async (req, res, next) => {

        const page = req.query.page ? parseInt(req.query.page) : null;
        const perPage = req.query.perPage ? parseInt(req.query.perPage) : null;

        let connection;

        let query = `
            SELECT * 
            FROM post_categories
            WHERE 1 = 1
        `;
        const queryParams = [];

        let query2 = `
            SELECT COUNT(*) AS total_records 
            FROM post_categories
            WHERE 1 = 1
        `;
        const queryParams2 = []

        query += ` ORDER BY post_category ASC`;

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
    replyPost: async (req, res, next) => {
        const loggedUser = req.userDecodedData;
        const {
            reply,
            post_id
        } = req.body;

        const now = Math.floor(Date.now() / 1000);

        let connection;

        try
        {
            // Get a connection from the pool
            connection = await pool.getConnection();

            //check if post ID exists
            const [ posts ] = await connection.execute(`
                SELECT *
                FROM posts
                WHERE post_id = ?
                LIMIT 1`,
                [ post_id ]
            )

            if(posts.length === 0)
            {
                throw new CustomError(404, "Post not found");
            }

            //submit post to database
            await connection.execute(
                `
                    INSERT INTO post_replies
                    (
                        post_id,
                        author_id,
                        post_reply,
                        created_at
                    )
                    VALUES (?, ?, ?, ?)
                `,
                [
                    post_id,
                    loggedUser.userID,
                    reply,
                    now
                ]
            );

            res.json({
                error: false,
                message: `Reply submitted successfully`
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
    getBlogPosts: async (req, res, next) => {

        const page = req.query.page ? parseInt(req.query.page) : null;
        const perPage = req.query.perPage ? parseInt(req.query.perPage) : null;

        let connection;

        let query = `
            SELECT * 
            FROM blog
            WHERE 1 = 1
        `;
        const queryParams = [];

        let query2 = `
            SELECT COUNT(*) AS total_records 
            FROM blog
            WHERE 1 = 1
        `;
        const queryParams2 = []

        query += ` ORDER BY blog_post_id ASC`;

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
    getBlogPost: async (req, res, next) => {
        const loggedUser = req.userDecodedData;
        const {
            blog_post_id
        } = req.params;

        let connection;

        try
        {
            // Get a connection from the pool
            connection = await pool.getConnection();

            //check if post ID exists
            const [ posts ] = await connection.execute(`
                SELECT *
                FROM blog
                WHERE blog_post_id = ?
                LIMIT 1`,
                [ blog_post_id ]
            )

            if(posts.length === 0)
            {
                throw new CustomError(404, "Post not found");
            }

            res.json({
                error: false,
                post: posts[0],
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
}