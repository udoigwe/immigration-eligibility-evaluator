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
        body("password")
            .exists({ checkFalsy: true })
            .withMessage("Password is required")
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
    ],
    resendOTP: [
		body("email")
			.exists({ checkFalsy: true })
			.withMessage("Email is required")
	],
    verifyAccount: [
		body("email")
			.exists({ checkFalsy: true })
			.withMessage("Email is required"),
		body("otp")
			.exists({ checkFalsy: true })
			.withMessage("OTP is required")
            .isNumeric()
            .withMessage("OTP must be a number")
	],
    sendPasswordRecoveryMail: [
		body("email")
			.exists({ checkFalsy: true })
			.withMessage("Email is required")
            .isEmail()
            .withMessage("Please provide a valid email address")
	],
    changePassword: [
		body("email")
			.exists({ checkFalsy: true })
			.withMessage("Email is required")
            .isEmail()
            .withMessage("Please provide a valid email address"),
		body("salt")
			.exists({ checkFalsy: true })
			.withMessage("Salt is required"),
		body("password")
			.exists({ checkFalsy: true })
			.withMessage("Password is required"),
	],
    profileUpdate: [
		body("gender")
			.exists({ checkFalsy: true })
			.withMessage("Gender is required"),
		body("date_of_birth")
			.exists({ checkFalsy: true })
			.withMessage("Date of birth is required"),
		body("nationality")
			.exists({ checkFalsy: true })
			.withMessage("Nationality is required"),
		body("marital_status")
			.exists({ checkFalsy: true })
			.withMessage("Marital Status is required"),
		body("education_level")
			.exists({ checkFalsy: true })
			.withMessage("Education Level is required"),
		body("years_of_experience")
			.exists({ checkFalsy: true })
			.withMessage("Years Of Experience is required"),
		body("language_proficiency")
			.exists({ checkFalsy: true })
			.withMessage("Language Proficiency is required"),
	],
}