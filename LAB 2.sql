-- Create Employee table
CREATE TABLE Employee (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Salary INT,
    Department VARCHAR(30)
);

-- 1. INSERT command
INSERT INTO Employee VALUES (101, 'Arun', 25000, 'HR');
INSERT INTO Employee VALUES (102, 'Priya', 30000, 'IT');
INSERT INTO Employee VALUES (103, 'Rahul', 28000, 'Sales');

-- Display all records
SELECT * FROM Employee;

-- 2. UPDATE command
UPDATE Employee
SET Salary = 35000
WHERE Emp_ID = 102;

-- Display updated records
SELECT * FROM Employee;

-- 3. DELETE command
DELETE FROM Employee
WHERE Emp_ID = 103;

-- Display final records
SELECT * FROM Employee;
