//accessing & configuring environmental variables
const dotenv = require('dotenv');
dotenv.config();
//Accepting from unauthorized
process.env['NODE_TLS_REJECT_UNAUTHORIZED'] = 0;

//variables
const express = require('express');
const app = express();
const port = process.env.PORT || 8001;
const cors = require('cors');
const useragent = require('express-useragent');
const swaggerUi = require("swagger-ui-express");
const yaml = require('js-yaml');
const fs = require('fs');

//using middlewares
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({extended:true}));
app.use(useragent.express());

//static files
app.use(express.static(__dirname + '/public'));
app.use('/assets', express.static(__dirname + '/public/assets'));

//set templating engine
app.set('view engine', 'ejs');
app.set('views', './src/views');

//importing all required routes
const authRoutes = require('./src/routes/auth');
const countryRoutes = require('./src/routes/country');
const immigrationTypesRoutes = require('./src/routes/immigrationTypes');
const criteriaRoutes = require('./src/routes/criteria');
const applicationRoutes = require('./src/routes/application');
const errorHandler = require('./src/middleware/errorHandler');

//importing all view routes
const viewRoutes = require('./src/routes/view')

// Parse YAML Swagger documentation to JSON
const swaggerFile = fs.readFileSync('./src/documentation/swagger.yaml', 'utf8');
const swaggerDocument = yaml.load(swaggerFile);

//using imported routes
app.use(process.env.ROUTE_PREFIX, authRoutes);
app.use(process.env.ROUTE_PREFIX, countryRoutes);
app.use(process.env.ROUTE_PREFIX, immigrationTypesRoutes);
app.use(process.env.ROUTE_PREFIX, criteriaRoutes);
app.use(process.env.ROUTE_PREFIX, applicationRoutes);

//using imported view routes
app.use(viewRoutes);

// Serve Swagger documentation at /api/docs
app.use(process.env.API_DOCS_ROUTE_PREFIX, swaggerUi.serve);
app.get(process.env.API_DOCS_ROUTE_PREFIX, swaggerUi.setup(swaggerDocument));

// Use the errorHandler middleware
app.use(errorHandler);

app.listen(port, () => {
    console.log(`App successfully running on port ${port}`);
})