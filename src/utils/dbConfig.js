const mysql = require('mysql2/promise');

//initialise database
const pool = mysql.createPool({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.NODE_ENV === 'production' ? process.env.DB_PASSWORD : '',
    database: process.env.DB_NAME,
    port: process.env.DB_PORT
});

module.exports = pool;