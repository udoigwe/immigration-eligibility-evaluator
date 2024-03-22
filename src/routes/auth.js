const express = require('express');
const router = express.Router();
const authController = require('../controllers/auth.controller');
const validators = require('../middleware/validators');
const checkAuth = require('../middleware/checkAuth');

router.post('/sign-up', validators.signUp, authController.signUp);
router.post('/login', validators.signin, authController.signin);
router.post('/resend-otp', validators.resendOTP, authController.resendOTP);
router.post('/send-password-recovery-mail', validators.sendPasswordRecoveryEmail, authController.sendPasswordRecoveryMail);
router.post('/verify-account', validators.verifyAccount, authController.verifyAccount);
router.post('/change-password', validators.changePassword, authController.changePassword);
router.post('/profile-update', checkAuth.verifyToken, validators.profileUpdate, authController.profileUpdate);

module.exports = router;