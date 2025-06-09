const mysql = require("mysql2"); 
// require("dotenv").config(); 

const connection = mysql.createConnection({
    host: process.env.DB_HOST || "localhost",
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME
}); 

connection.connect(function(error){
    if(error) console.log(error); 
    //console.log("connected to "+ process.env.DB_NAME + " successfully !!")
});

module.exports = connection; 

