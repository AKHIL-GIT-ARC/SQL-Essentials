-- Show first 2 students
SELECT *
FROM students
LIMIT 2;

-- Show first 3 student names
SELECT name
FROM students
LIMIT 3;

-- Top 2 students by CGPA
SELECT *
FROM students
ORDER BY cgpa DESC
LIMIT 2;

-- Youngest 2 students
SELECT *
FROM students
ORDER BY age
LIMIT 2;

-- Skip first student and show next 2
SELECT *
FROM students
LIMIT 2 OFFSET 1;

-- Highest CGPA student
SELECT *
FROM students
ORDER BY cgpa DESC
LIMIT 1;