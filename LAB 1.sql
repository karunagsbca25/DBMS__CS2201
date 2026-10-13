-- 1. CREATE TABLE
CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);

-- 2. ALTER TABLE: Add a new column
ALTER TABLE Student
ADD Email VARCHAR(100);

-- 3. DROP TABLE: Delete the table
DROP TABLE Student;
-- 1. CREATE TABLE
CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);

-- 2. INSERT: Insert records into the table
INSERT INTO Student VALUES (1, 'Rahul', 20);
INSERT INTO Student VALUES (2, 'Priya', 19);
INSERT INTO Student VALUES (3, 'Amit', 21);

-- 3. UPDATE: Update a student's age
UPDATE Student
SET Age = 22
WHERE Student_ID = 1;

-- 4. DELETE: Delete a student record
DELETE FROM Student
WHERE Student_ID = 3;

-- Display the remaining records
SELECT * FROM Student;