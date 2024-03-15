const { body} = require("express-validator");

module.exports = {
    apply: [
		body("country_id")
			.exists({ checkFalsy: true })
			.withMessage("Country is required")
            .isNumeric()
            .withMessage("Country ID must be a number"),
		body("immigration_type_id")
		 	.exists({ checkFalsy: true})
			.withMessage("Immigration Type is required")
            .isNumeric()
            .withMessage("Immigration Type must be a number"),
        body("options")
            .exists({ checkFalsy: true })
            .withMessage("Criteria Options is required")
            .isArray()
            .withMessage("Options must be an array")
	]
}