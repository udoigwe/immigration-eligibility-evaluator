const express = require('express');
const router = express.Router();
const resourcesController = require('../controllers/resources.controller');
const validators = require('../middleware/validators');
const checkAuth = require('../middleware/checkAuth');

router.get('/countries', resourcesController.getCountries);
router.get('/visa-categories', resourcesController.getVisaCategories);
router.get('/visa-criteria/:country_code/:visa_category_id', validators.getCountryVisaCriteria, resourcesController.getCountryVisaCriteria);

module.exports = router;