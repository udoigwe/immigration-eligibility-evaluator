const express = require('express');
const router = express.Router();
const authController = require('../controllers/auth.controller');
const validators = require('../middleware/validators');
const checkAuth = require('../middleware/checkAuth');

router.post('/sign-up', validators.signUp, authController.signUp);
router.post('/login', validators.signin, authController.signin);

module.exports = router;