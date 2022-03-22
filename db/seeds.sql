use workforce;

INSERT INTO departments(name) 
VALUES ("Sales"), ("Finance"), ("Engineering"), ("Legal"); 


INSERT INTO roles (title, salary, department_id)
    VALUES 
    ('Sales Lead', 100000, 1),
    ('Salesperson', 80000, 1),
    ('Lead Engineer', 150000, 3),
    ('Software Engineer', 120000, 3),
    ('Account Manager', 160000, 2),
    ('Accountant', 125000, 2),
    ('Legal Team Lead', 250000, 7),
    ('Lawyer', 190000, 7);

insert into employees (first_name, last_name, role_id)
    VALUES
    ('John', 'Doe',  2, 1),
    ('Mike', 'Chan',  1, 2),
    ('Ashley', 'Rodriguez',  4, 3),
    ('Kevin', 'Tupik',  1, 3),
    ('Kunal', 'Singh',  2, 3),
    ('Malia', 'Brown',  2, 1),
    ('Sarah', 'Lourd',  2, 1),
    ('Tom', 'Allen',  3, 2);