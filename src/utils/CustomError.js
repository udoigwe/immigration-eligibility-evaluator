class CustomError extends Error {
    constructor(status, message) {
        super(message);
        this.name = this.constructor.name;
        this.status = status || 500;
        Error.captureStackTrace(this, this.constructor);
    }
}
  
module.exports = CustomError;