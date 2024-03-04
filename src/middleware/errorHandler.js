const CustomError = require("../utils/CustomError");

function errorHandler(err, req, res, next) {
    console.error(err.stack);

    // Check for specific error types and handle them accordingly
    if (err instanceof CustomError) {
        return res.status(err.status).json({ 
            error: true, 
            message: err.message 
        });
    }

    // Handle other types of errors
    return res.status(500).json({ 
        error: true,
        message: 'Internal Server Error' 
    });
}

module.exports = errorHandler;