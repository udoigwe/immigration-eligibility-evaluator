const { validate } = require('../utils/functions');
const authValidations = require('../validations/auth.validation');
const applicationValidations = require('../validations/application.validation');
const postValidations = require('../validations/post.validation');
const resouceValidations = require('../validations/resources.validation');

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
    getCountryVisaCriteria: validate(applicationValidations.getCountryVisaCriteria),
    compareCountries: validate(resouceValidations.compareCountries),

    /* Post route validators */
    createPost: validate(postValidations.createPost),
    replyPost: validate(postValidations.replyPost),
    getBlogPost: validate(postValidations.getBlogPost),

    /* Immigration Insights */
    getImmigrationInsights: validate(resouceValidations.getImmigrationInsights),
}