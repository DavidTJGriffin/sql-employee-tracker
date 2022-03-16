drop table if exists departments;
drop table if exists roles;
drop table if exists employees;

create table departments (
    id int auto_increment primary key,
    name varchar(30)
);

create table roles (
    id int auto_increment primary key, 
    title varchar(30),
    salary decimal, 
    department_id int
);

create table employees (
    id int auto_increment primary key,
    first_name varchar(30),
    last_name varchar(30),
    role_id int
);


