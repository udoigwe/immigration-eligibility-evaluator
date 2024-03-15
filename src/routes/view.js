const express = require('express');
const router = express.Router();
const viewsController = require('../controllers/view.controller');

router.get('/', viewsController.home);
router.get('/sign-in', viewsController.signIn);
router.get('/register', viewsController.signUp);

/* Protected pages */
router.get('/dashboard', viewsController.dashboard);
router.get('/applications', viewsController.applications);

module.exports = router;