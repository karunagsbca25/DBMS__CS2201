-- Create table
CREATE TABLE Employee (
    Emp_ID INT,
    Emp_Name VARCHAR(50),
    Joining_Date DATE,
    Salary DECIMAL(10,2)
);

INSERT INTO Employee VALUES
(101, 'Rahul', '2024-01-15', 45000),
(102, 'Ananya', '2023-06-20', 55000),
(103, 'Kiran', '2022-11-10', 60000);

-- Conversion Functions
SELECT CAST(Salary AS CHAR) AS Salary_Text
FROM Employee;

SELECT CONVERT(Salary, CHAR) AS Salary_Text
FROM Employee;

-- Date Functions
SELECT CURDATE();

SELECT NOW();

SELECT YEAR(Joining_Date) 
FROM Employee;

SELECT MONTH(Joining_Date) AS Joining_Month
FROM Employee;

SELECT DAY(Joining_Date) AS Joining_Day
FROM Employee;

SELECT DATEDIFF(CURDATE(), Joining_Date) AS Days_Worked
FROM Employee;

SELECT DATE_FORMAT(Joining_Date, '%d-%m-%Y') AS Formatted_Date
FROM Employee;