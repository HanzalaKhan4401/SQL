create table students(
id int not null unique identity,
name varchar(255) not null,
email varchar(255) unique,
age varchar(255) not null
);


INSERT INTO students (name, email, age)
VALUES 
    ('Alice Johnson', 'alice.johnson@example.com', 23),
    ('Charlie Brown', 'charlie.brown@example.com', 24),
    ('David Miller', 'david.miller@example.com', 22),
    ('Eva Williams', 'eva.williams@example.com', 21),
    ('Frank White', 'frank.white@example.com', 25),
    ('Grace Davis', 'grace.davis@example.com', 20),
    ('Henry Wilson', 'henry.wilson@example.com', 23),
    ('Ivy Taylor', 'ivy.taylor@example.com', 24),
    ('Jack Martin', 'jack.martin@example.com', 22),
    ('Kelly Anderson', 'kelly.anderson@example.com', 21),
    ('Liam Moore', 'liam.moore@example.com', 25),
    ('Mia Jackson', 'mia.jackson@example.com', 20),
    ('Noah Thomas', 'noah.thomas@example.com', 23),
    ('Olivia Clark', 'olivia.clark@example.com', 24),
    ('Paula Garcia', 'paula.garcia@example.com', 22),
    ('Quinn Davis', 'quinn.davis@example.com', 21),
    ('Ryan Johnson', 'ryan.johnson@example.com', 25),
    ('Sophia Wilson', 'sophia.wilson@example.com', 20),
    ('Tyler Smith', 'tyler.smith@example.com', 23),
    ('Uma Brown', 'uma.brown@example.com', 24);

select * from students;

create table employee(
id int not null unique identity(100,2),
fname varchar(255) not null,
lname varchar(255) not null,
email varchar(255) unique,
designation varchar(255),
gender varchar(255),
age varchar(255) not null,
salary int 
);


INSERT INTO employee (fname, lname, email, designation, gender, age, salary)
VALUES
    ('Alice', 'Johnson', 'alice.johnson@example.com', 'Manager', 'Female', 32, 75000),
    ('Bob', 'Williams', 'bob.williams@example.com', 'Engineer', 'Male', 28, 65000),
    ('Charlie', 'Davis', 'charlie.davis@example.com', 'Analyst', 'Male', 35, 70000),
    ('Diana', 'Miller', 'diana.miller@example.com', 'Coordinator', 'Female', 27, 60000),
    ('Edward', 'Lee', 'edward.lee@example.com', 'Designer', 'Male', 29, 62000),
    ('Fiona', 'Clark', 'fiona.clark@example.com', 'Developer', 'Female', 31, 68000),
    ('George', 'Taylor', 'george.taylor@example.com', 'Manager', 'Male', 33, 80000),
    ('Hannah', 'Moore', 'hannah.moore@example.com', 'Analyst', 'Female', 26, 58000),
    ('Ian', 'Johnson', 'ian.johnson@example.com', 'Engineer', 'Male', 30, 67000),
    ('Jessica', 'Smith', 'jessica.smith@example.com', 'Coordinator', 'Female', 34, 72000);

select * from employee;

select gender,sum(salary) as total_salary from employee group by (gender) with rollup;
select designation,sum(salary) as Total_Salary from employee group by (designation) with rollup;
select gender,designation,sum(salary) as Total_Salary from employee group by designation,gender with rollup;


-- Departments Table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);


INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
    (1, 'HR'),
    (2, 'IT'),
    (3, 'Finance');

select * from Departments;