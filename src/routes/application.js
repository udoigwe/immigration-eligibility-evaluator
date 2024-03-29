const express = require('express');
const router = express.Router();
const applicationController = require('../controllers/application.controller');
const validators = require('../middleware/validators');
const checkAuth = require('../middleware/checkAuth');

router.post('/evaluate', checkAuth.verifyToken, validators.evaluate, applicationController.evaluate);
router.post('/find-suitable-countries', checkAuth.verifyToken, validators.findSuitableCountries, applicationController.findSuitableCountries);

module.exports = router;