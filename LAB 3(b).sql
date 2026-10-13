-- 1. STRING FUNCTIONS

SELECT UPPER('hello world') AS Uppercase;

SELECT LOWER('HELLO WORLD') AS Lowercase;

SELECT LENGTH('DATABASE') AS String_Length;

SELECT CONCAT('Hello', ' ', 'World') AS Full_String;

SELECT SUBSTRING('DATABASE', 1, 4) AS Sub_String;

SELECT REPLACE('Hello World', 'World', 'SQL') AS Replaced_String;

SELECT TRIM('  SQL Functions  ') AS Trimmed_String;

SELECT REVERSE('SQL') AS Reversed_String;


-- 2. NUMERICAL FUNCTIONS

SELECT ABS(-25) AS Absolute_Value;

SELECT CEIL(12.3) AS Ceiling_Value;

SELECT FLOOR(12.8) AS Floor_Value;

SELECT ROUND(12.567, 2) AS Rounded_Value;

SELECT MOD(10, 3) AS Remainder;

SELECT POWER(2, 3) AS Power_Value;

SELECT SQRT(64) AS Square_Root;

SELECT TRUNCATE(15.678, 2) AS Truncated_Value;


-- 3. AGGREGATE FUNCTIONS

CREATE TABLE Student_Marks (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50),
    Marks INT
);

INSERT INTO Student_Marks VALUES (1, 'Rahul', 85);
INSERT INTO Student_Marks VALUES (2, 'Priya', 90);
INSERT INTO Student_Marks VALUES (3, 'Amit', 75);
INSERT INTO Student_Marks VALUES (4, 'Sneha', 80);
INSERT INTO Student_Marks VALUES (5, 'Arun', 70);

SELECT COUNT(*) AS Total_Students
FROM Student_Marks;

SELECT SUM(Marks) AS Total_Marks
FROM Student_Marks;

SELECT AVG(Marks) AS Average_Marks
FROM Student_Marks;

SELECT MAX(Marks) AS Highest_Marks
FROM Student_Marks;

SELECT MIN(Marks) AS Lowest_Marks
FROM Student_Marks;


-- 4. DATE FUNCTIONS

SELECT CURDATE();

SELECT NOW() AS Current_Date_Time;

SELECT YEAR('2026-10-13') AS Year_Value;

SELECT MONTH('2026-10-13') AS Month_Value;

SELECT DAY('2026-10-13') AS Day_Value;

SELECT DATE_ADD('2026-10-13', INTERVAL 10 DAY) AS New_Date;

SELECT DATE_SUB('2026-10-13', INTERVAL 5 DAY) AS Previous_Date;

SELECT DATEDIFF('2026-10-20', '2026-10-13') AS Date_Difference;

SELECT DAYNAME('2026-10-13') AS Day_Name;

SELECT MONTHNAME('2026-10-13') AS Month_Name;
