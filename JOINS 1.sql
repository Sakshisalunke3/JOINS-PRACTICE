CREATE DATABASE company;
USE company;
CREATE TABLE employee(
emp_id INT PRIMARY KEY,
emp_name VARCHAR(50),
dept_id INT
);
INSERT INTO employee(emp_id, emp_name, dept_id)
VALUES
(1, "Raj", 101),
(2, "Maddy", 103),
(3, "Amol", 104),
(4, "Ram", 106),
(5, "Bob", 108);
SELECT * FROM employee;

CREATE TABLE department(
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50)
);
INSERT INTO department(dept_id, dept_name)
VALUES
(101, "IT"),
(102, "SALES"),
(103, "MARKETING"),
(104, "FINANCE"),
(105, "HR"),
(106, "SOFTWARE ENG"),
(107, "WEB DEVELOPER"),
(108, "DATA ANALYST");

SELECT * FROM department;

SELECT *
FROM employee
INNER JOIN department
ON employee.dept_id=department.dept_id;

SELECT *
FROM employee
LEFT JOIN department
ON employee.dept_id=department.dept_id;

SELECT *
FROM employee
RIGHT JOIN department
ON employee.dept_id=department.dept_id;

SELECT *
FROM employee
LEFT JOIN department
ON employee.dept_id=department.dept_id
UNION
SELECT *
FROM employee
RIGHT JOIN department
ON employee.dept_id=department.dept_id;




