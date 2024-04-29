const { body, param } = require("express-validator");

module.exports = {
    getImmigrationInsights: [
		param("visa_category_id")
			.exists({ checkFalsy: true })
			.withMessage("Visa Category is required")
            .isNumeric()
            .withMessage("Visa Category ID must be a number"),
		param("country_code")
			.exists({ checkFalsy: true })
			.withMessage("Country Code is required"),
	],
	compareCountries: [
		body("country_one")
			.exists({ checkFalsy: true })
			.withMessage("Country One is required"),
		body("country_two")
		 	.exists({ checkFalsy: true})
			.withMessage("Country Two is required"),
        body("visa_category_id")
            .exists({ checkFalsy: true })
            .withMessage("Visa Category ID is required")
	],
}