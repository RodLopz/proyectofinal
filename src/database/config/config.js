// module.exports = {
//   "development": {
//     "username": "root",
//     "password": null,
//     "database": "servicios_sql",
//     "host": "127.0.0.1",
//     "dialect": "mysql",
//     "port" : 3306
//   },
const mysql = require('mysql');

module.exports = {
  "development": {
    "connectionLimit": 5,
    "host": "b3ncolpnxhtep2gfu0qs-mysql.services.clever-cloud.com",
    "user": "uundp4v4uinyvt91",
    "password": "AZMojXfHxOnmRCQulfUl",
    "database": "b3ncolpnxhtep2gfu0qs",
    "dialect": "mysql",
    "port": 3306
  },
  "test": {
    "username": "root",
    "password": null,
    "database": "database_test",
    "host": "127.0.0.1",
    "dialect": "mysql"
  },
  "production": {
    "username": "root",
    "password": null,
    "database": "database_production",
    "host": "127.0.0.1",
    "dialect": "mysql"
  }
}
