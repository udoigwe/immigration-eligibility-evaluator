const { body} = require("express-validator");

module.exports = {
    signUp: [
		body("first_name")
			.exists({ checkFalsy: true })
			.withMessage("User First Name is required"),
		body("last_name")
		 	.exists({ checkFalsy: true})
			.withMessage("User Last Name is required"),
        body("email")
            .exists({ checkFalsy: true })
            .withMessage("User Email is required")
            .isEmail()
            .withMessage("Please provide a valid email address"),
        body("gender")
            .exists({ checkFalsy: true })
            .withMessage("User Gender is required"),
        body("password")
            .exists({ checkFalsy: true })
            .withMessage("Password is required"),
        body("nationality")
            .exists({ checkFalsy: true })
            .withMessage("Nationality is required"),
        body("dob")
            .exists({ checkFalsy: true })
            .withMessage("Date Of Birth is required")
	],
    signin: [
        body("email")
            .exists({ checkFalsy: true })
            .withMessage("Email is required")
            .isEmail()
            .withMessage("Please provide a valid email address"),
        body("password")
            .exists({ checkFalsy: true })
            .withMessage("Password is required")
    ]
}