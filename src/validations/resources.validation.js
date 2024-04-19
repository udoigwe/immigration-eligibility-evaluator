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
}