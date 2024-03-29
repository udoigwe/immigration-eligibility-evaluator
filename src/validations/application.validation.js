const { body, param } = require("express-validator");

module.exports = {
    evaluate: [
		body("CountryCode")
			.exists({ checkFalsy: true })
			.withMessage("Country is required"),
		body("VisaCategoryID")
		 	.exists({ checkFalsy: true})
			.withMessage("Visa Category is required")
            .isNumeric()
            .withMessage("Visa Category must be a number"),
        body("options")
            .exists({ checkFalsy: true })
            .withMessage("Criteria Options is required")
            .isArray()
            .withMessage("Options must be an array")
	],
    findSuitableCountries: [
		body("VisaCategoryID")
			.exists({ checkFalsy: true })
			.withMessage("Visa Category is required")
            .isNumeric()
            .withMessage("Visa Category ID must be a number")
	],
    getCountryVisaCriteria: [
		param("visa_category_id")
			.exists({ checkFalsy: true })
			.withMessage("Visa Category is required")
            .isNumeric()
            .withMessage("Visa Category ID must be a number"),
		param("country_code")
			.exists({ checkFalsy: true })
			.withMessage("Country Code is required"),
	],
}