const inquirer = require('inquirer');
const database = require("./config/connection");

function init() {
    console.log("Welcome to employee Tracker ");

    inquirer
        .prompt([
            {
                type: 'list',
                name: 'options',
                message: "What would you like to do? ",
                choices: ["View All Employees", "Add Employee", "Update Employee Role", "View All Roles", "Add Role", "View All Departments", "Add Department", "Quit"],
            },
        ]).then(userResponse => {
            console.log(userResponse);
            if (userResponse.options === "View All Departments") {
                //create a view employees function 
                viewAllDepartments(); 
            } else {
                console.log("Goodbye!!");
                process.exit(0);

            }
        })
}

init(); 

function viewAllEmployees(){
    console.log("SELECT QUERY ")
}

function viewAllDepartments(){
console.log("Show values from database.."); 
const departmentQuery = "SELECT id, name AS 'Department Name' from departments "
database.query(departmentQuery, function(err, results){
    if (err) console.log(err); 

    console.table(results); 

    //call init again for asking question again 
    init(); 
})
}

function viewAllRoles(){
    console.log("Show values from database.."); 
    const rolesQuery = "SELECT id, name AS 'Department Name' from departments "
    database.query(rolesQuery, function(err, results){
        if (err) console.log(err); 
    
        console.table(results); 
    
        //call init again for asking question again 
        init(); 
    })
    }