const sql = require('mysql');
const config = require('../config');

const connect = sql.createConnection({
    host: config.host,
    port: config.port,
    user: config.user,
    password: config.password,
    database: config.database,
    connectionLimit : 20,
    queueLimit : 100,
    waitForConnections : true
    
    // host:config.host,
    // password: config.password,
    // user: config.user,
    // port:config.port,
    // database:config.database
})

module.exports = connect;