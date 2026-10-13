CREATE TABLE Student1 (
    Student_ID INT,
    Name VARCHAR(50),
    Marks INT
);

INSERT INTO Student1 VALUES
(1, 'Asha', 85),
(2, 'KAruna', 72),
(3, 'Shiva', 90);

-- BETWEEN
SELECT * FROM Student1
WHERE Marks BETWEEN 70 AND 90;

-- IN
SELECT * FROM Student1
WHERE Marks IN (72, 90);

-- NOT IN
SELECT * FROM Student1
WHERE Marks NOT IN (72, 90);

-- LIKE
SELECT * FROM Student1
WHERE Name LIKE 'A%';

-- NOT LIKE
SELECT * FROM Student1
WHERE Name NOT LIKE 'A%';

-- IS NULL
SELECT * FROM Student1
WHERE Marks IS NULL;

-- UNION
SELECT Name FROM Student1
WHERE Marks >= 80

UNION

SELECT Name FROM Student1
WHERE Marks <= 75;