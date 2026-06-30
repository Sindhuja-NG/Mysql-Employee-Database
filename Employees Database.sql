create database Employee;
Drop database Employee;
create database Employee;
use Employee;
CREATE TABLE Department
(
    department_id varchar(10) PRIMARY KEY,
    department_name VARCHAR(50)
    NOT NULL
    UNIQUE
);
INSERT INTO Department VALUES
('D101','HR'),
('D102','Finance'),
('D103','IT'),
('D104','Sales');

describe Department;
SELECT * FROM Department;

CREATE TABLE Location
(
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location_name VARCHAR(50)
    NOT NULL
    UNIQUE
);
Describe Location;
INSERT INTO Location(location_name)
VALUES
('Banglore'),
('Chennai'),
('Hyderabad'),
('Kochi');

 CREATE TABLE Employees
(
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender CHAR(1) CHECK (gender IN ('M','F')),
    age INT CHECK(age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(20),
    salary DECIMAL(10,2),
    department_id VARCHAR(10),
    FOREIGN KEY(department_id)
    REFERENCES Department(department_id),
    location_id INT,
    FOREIGN KEY(location_id)
    REFERENCES Location(location_id)
);
Describe Employees;
INSERT INTO Employees(employee_name,gender,age,designation,salary,department_id,location_id)
VALUES
('Anu','F',25,'Developer',50000,'D103',1),
('Bharath','M',28,'Analyst',60000,'D102',2),
('Dany','M',30,'Manager',75000,'D104',3),
('gowri','F',30,'Manager',75000,'D101',3);
select * from Employees;

ALTER TABLE Employees
ADD email VARCHAR(100);
Describe Employees;
INSERT INTO Employees(employee_name,gender,age,designation,salary,department_id,location_id,email)
VALUES
('Anu','F',25,'Developer',50000,'D103',1,'anu@gmail.com'),
('Bharath','M',28,'Analyst',60000,'D102',2,'Bharath@yahoo.com'),
('Dany','M',30,'Manager',75000,'D104',3,'Dany@gmail.com'),
('gowri','F',30,'Manager',75000,'D101',3,'gowri@gmail.com');
Select * from Employees;

ALTER TABLE Employees
MODIFY designation VARCHAR(50);

ALTER TABLE Employees
DROP COLUMN age;

ALTER TABLE Employees
RENAME COLUMN hire_date TO date_of_joining;

RENAME TABLE Department 
TO Departments_Info;

RENAME TABLE Location
TO Locations;

TRUNCATE TABLE Employees;
describe Employees;
select * From Employees;

DROP TABLE Employees;
select * from Employees;

Drop database Employee;
use Employee;


