const pool = require("./dbConfig");
const jwt = require('jsonwebtoken');
const { validationResult } = require('express-validator');
const CustomError = require("./CustomError");
const nodemailer = require('nodemailer');

exports.validateEmail = (email) => {
    
    var filter = /^[\w-.+]+@[a-zA-Z0-9.-]+.[a-zA-Z0-9]{2,4}$/;

    if(filter.test(email))
    {
        return true;
    }
    else 
    {
        return false;
    }
}

exports.validateDigits = (entry) => {
    var filter = /^[0-9]+$/;

    if(filter.test(entry))
    {
        return true;
    }
    else
    {
        return false;
    }
}

exports.validateLeadingZeros = (entry) => {
    var filter = /^(0|[1-9][0-9]*)$/;

    if(filter.test(entry))
    {
        return true
    }
    else
    {
        return false
    }
}

exports.verifyToken = (token, cb) => {
    jwt.verify(token, process.env.JWT_SECRET, (err, decoded) => {
        if(err)
        {
            cb(err, null);
        }
        else
        {
            cb(null, decoded);
        }
    });
}

exports.uuidv4 = () => {
    return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
      var r = Math.random() * 16 | 0, v = c == 'x' ? r : (r & 0x3 | 0x8);
      return v.toString(16);
    });
}

exports.validate = (validations) => {
    
    return async (req, res, next) => {
        try
        {
            await Promise.all(validations.map(validation => validation.run(req)));
            const errors = validationResult(req);
    
            if(!errors.isEmpty())
            {
                //iterate through the errors and show the first to the user
                throw new CustomError(422, `${errors.array()[0].msg}`)
            }
    
            return next();
        }
        catch(e)
        {
            next(e);
        }
    };
};

exports.getCSVPlaceHolders = (value, currentParamCount) => {
    let paramCount = currentParamCount;

    // Split the comma-separated string into an array of values
    const valuesArray = value.split(',');

    // Create an array of placeholders for the parameterized query
    const placeholders = valuesArray.map((value, index) => {
        index > 0 ? paramCount++ : paramCount;
        return `$${paramCount}`;
    }).join(',');

    //get next paramCount
    const nextParamCount = paramCount + 1;

    //return values and placeholders
    return { valuesArray, placeholders, nextParamCount }
}

exports.getCustomColumns = async (customQuery) => {
    //add LIMIT 1 to the custom query string to avoid loading all rows from the query
    customQuery += ` LIMIT 1`;

    try
    {
        //get custom columns to search from using the customQuery
        const result = await pool.query(customQuery);

        //get all columns from the query result
        const customColumns = result.fields.map(field => field.name);

        return customColumns;
    }
    catch(e)
    {
        throw e;
    }
}

exports.sendMail = async (to, subject, html) => {
    const transporter = nodemailer.createTransport({
        host: 'smtp.gmail.com',
        port: 2525,
        auth: {
            user: process.env.GMAIL_USER,
            pass: process.env.GMAIL_PASSWORD
        }
    });

    const mailOptions = {
        from: `"Immigration Evaluator" <${process.env.GMAIL_USER}>`,
        to,
        subject,
        html
    };

    try
    {
        /* const info = await transporter.sendMail(mailOptions);
        console.log('Email sent:', info.response);
        return true; // Email sent successfully */
        await transporter.sendMail(mailOptions);
        return true;
    }
    catch(e)
    {
        throw e;
    }
}