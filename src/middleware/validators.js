const { validate } = require('../utils/functions');
const authValidations = require('../validations/auth.validation');
const applicationValidations = require('../validations/application.validation');

module.exports = {
    /* Auth route validators */
    signUp: validate(authValidations.signUp),
    signin: validate(authValidations.signin),

    /* Applications route validators */
    apply: validate(applicationValidations.apply)
}