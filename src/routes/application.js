const express = require('express');
const router = express.Router();
const applicationController = require('../controllers/application.controller');
const validators = require('../middleware/validators');
const checkAuth = require('../middleware/checkAuth');

router.post('/apply', checkAuth.verifyToken, validators.apply, applicationController.apply);

module.exports = router;