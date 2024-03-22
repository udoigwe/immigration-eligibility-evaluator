const pool = require("../utils/dbConfig");

module.exports = {
    getAllUserInformation: async (req, res, next) => {
        const {
            user_id,
            gender
        } = req.query;

        let connection;

        let query = `
            SELECT *
            FROM personalinformation
            WHERE 1 = 1
        `;
        const queryParams = [];

        let query2 = `
            SELECT COUNT(*) AS total_records
            FROM personalInformation
            WHERE 1 = 1
        `;
        const queryParams2 = [];

        if(user_id)
        {
            query += ` AND user_id = ?`;
            queryParams.push(user_id);

            query2 += ` AND user_id = ?`;
            queryParams2
        }
    }
}