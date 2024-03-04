const jwt = require('jsonwebtoken');

module.exports = {
    verifyToken: (req, res, next) => {
        try 
        {
            const decoded = jwt.verify(req.headers['x-access-token'], process.env.JWT_SECRET);
            req.userDecodedData = decoded;
            next();
        }
        catch (error)
        {
            res.json({
                error:true,
                message:'Authentication failed'
            });
        }
    }
}