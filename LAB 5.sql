CREATE TABLE Student (
    Student_ID INT,
    Name VARCHAR(50),
    Age INT,
    Marks INT
);

INSERT INTO Student VALUES
(1, 'Karuna', 20, 85),
(2, 'Shiva', 19, 72),
(3, 'Prakash', 21, 90),
(4, 'Priya', 18, 65);

-- Arithmetic Operators
SELECT Marks + 5 AS Increased_Marks
FROM Student;

SELECT Marks - 5 AS Decreased_Marks
FROM Student;

SELECT Marks * 2 AS Double_Marks
FROM Student;

SELECT Marks / 2 AS Half_Marks
FROM Student;

SELECT Marks % 10 AS Remainder
FROM Student;

-- Comparison Operators
SELECT * FROM Student WHERE Marks = 85;

SELECT * FROM Student WHERE Marks > 75;

SELECT * FROM Student WHERE Marks < 80;

SELECT * FROM Student WHERE Marks >= 85;

SELECT * FROM Student WHERE Marks <= 72;

SELECT * FROM Student WHERE Marks <> 85;

-- Logical Operators
SELECT * FROM Student
WHERE Marks > 70 AND Age < 21;

SELECT * FROM Student
WHERE Marks > 85 OR Age < 19;

SELECT * FROM Student
WHERE NOT Marks < 70;