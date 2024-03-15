const express = require('express');
const router = express.Router();
const criteriaController = require('../controllers/criteria.controller');
const validators = require('../middleware/validators');
const checkAuth = require('../middleware/checkAuth');

router.get('/criteria', criteriaController.getAllCriteria);
router.get('/criteria-options', criteriaController.getAllCriteriaOptions);

module.exports = router;