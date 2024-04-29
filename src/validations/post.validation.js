const { body, param } = require("express-validator");

module.exports = {
    createPost: [
		body("post")
			.exists({ checkFalsy: true })
			.withMessage("post required"),
		body("post_category_id")
			.exists({ checkFalsy: true })
			.withMessage("Post Category required")
	],
    replyPost: [
		body("post_id")
			.exists({ checkFalsy: true })
			.withMessage("post ID required"),
		body("reply")
			.exists({ checkFalsy: true })
			.withMessage("Reply is required"),
	],
	getBlogPost: [
		param("blog_post_id")
			.exists({ checkFalsy: true })
			.withMessage("blog post ID required")
	]
}