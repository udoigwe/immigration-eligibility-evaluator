const { validate } = require('../utils/functions');
const authValidations = require('../validations/auth.validation');
const applicationValidations = require('../validations/application.validation');

module.exports = {
    /* Auth route validators */
    signUp: validate(authValidations.signUp),
    signin: validate(authValidations.signin),
    resendOTP: validate(authValidations.resendOTP),
    verifyAccount: validate(authValidations.verifyAccount),
    sendPasswordRecoveryEmail: validate(authValidations.sendPasswordRecoveryMail),
    changePassword: validate(authValidations.changePassword),
    resetPassword: validate(authValidations.resetPassword),
    profileUpdate: validate(authValidations.profileUpdate),

    /* Applications route validators */
    evaluate: validate(applicationValidations.evaluate),
    findSuitableCountries: validate(applicationValidations.findSuitableCountries),
    getCountryVisaCriteria: validate(applicationValidations.getCountryVisaCriteria)
}