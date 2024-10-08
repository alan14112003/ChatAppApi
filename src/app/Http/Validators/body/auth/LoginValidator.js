const Joi = require('joi')

const LoginValidator = Joi.object({
  email: Joi.string().email().required(),
  password: Joi.string().required().min(6),
})

module.exports = LoginValidator
