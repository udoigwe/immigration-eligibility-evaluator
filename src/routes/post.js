const express = require('express');
const router = express.Router();
const postController = require('../controllers/post.controller');
const validators = require('../middleware/validators');
const checkAuth = require('../middleware/checkAuth');

router.post('/posts', checkAuth.verifyToken, validators.createPost, postController.createPost);
router.get('/posts', checkAuth.verifyToken, postController.getPosts);
router.get('/post-categories', checkAuth.verifyToken, postController.getPostCategories);
router.post('/reply-post', checkAuth.verifyToken, validators.replyPost, postController.replyPost);

module.exports = router;