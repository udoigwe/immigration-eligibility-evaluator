const { validate } = require('../utils/functions');
const authValidations = require('../validations/auth.validation');

module.exports = {
    /* Auth route validators */
    signUp: validate(authValidations.signUp),
    signin: validate(authValidations.signin),
}