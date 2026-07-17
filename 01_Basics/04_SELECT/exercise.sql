-- Show all records
SELECT *
FROM students;

-- Show specific columns
SELECT name,age
FROM students;

-- Show Name and Department
SELECT name,department
FROM students;

-- Using Alias
SELECT name AS Student_Name,cgpa AS GPA
FROM students;

-- Constant Value
SELECT 'Welcome to the SQL Handbook!';

-- Simple Calculation
SELECT 100 + 250;

-- Current Date
SELECT DATE('now');

-- Current Time
SELECT TIME('now');

-- Current Date and Time
SELECT DATETIME('now');