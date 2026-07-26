-- =====================================
-- AGGREGATE FUNCTIONS
-- =====================================
SELECT *
FROM students;

-- Count students
SELECT COUNT(*) AS total_students
FROM students;

-- Average CGPA
SELECT AVG(cgpa) AS average_cgpa
FROM students;

-- Highest CGPA
SELECT MAX(cgpa) AS highest_cgpa
FROM students;

-- Lowest CGPA
SELECT MIN(cgpa) AS lowest_cgpa
FROM students;

-- Total of student ages
SELECT SUM(age) AS total_age
FROM students;

-- Multiple calculations
SELECT
    COUNT(*) AS total_students,
    AVG(cgpa) AS average_cgpa,
    MIN(cgpa) AS lowest_cgpa,
    MAX(cgpa) AS highest_cgpa
FROM students;

-- Aggregate with WHERE
SELECT AVG(cgpa) AS average_cgpa
FROM students
WHERE department = 'CSE AIML';