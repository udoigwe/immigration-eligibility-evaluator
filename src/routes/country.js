const express = require('express');
const router = express.Router();
const countryController = require('../controllers/country.controller');
const validators = require('../middleware/validators');
const checkAuth = require('../middleware/checkAuth');

router.get('/countries', countryController.getCountries);

module.exports = router;