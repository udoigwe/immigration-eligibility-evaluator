const express = require('express');
const router = express.Router();
const immigrationTypeController = require('../controllers/immigrationTypes.controller');
const validators = require('../middleware/validators');
const checkAuth = require('../middleware/checkAuth');

router.get('/immigration-types', immigrationTypeController.getImmigrationTypes);

module.exports = router;