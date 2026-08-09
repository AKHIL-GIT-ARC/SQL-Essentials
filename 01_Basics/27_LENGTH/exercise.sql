# `exercise.sql`

-- =====================================
-- LENGTH
-- =====================================

-- Basic examples

SELECT LENGTH('SQLite');

SELECT LENGTH('SQL Handbook');

SELECT LENGTH('Akhil');

-- Length of student names
SELECT
    name,
    LENGTH(name) AS name_length
FROM students;


-- Length of email addresses
SELECT
    name,
    email,
    LENGTH(email) AS email_length
FROM students;


-- Names longer than 5 characters
SELECT
    name,
    LENGTH(name) AS name_length
FROM students
WHERE LENGTH(name) > 5;


-- Sort names by length
SELECT
    name,
    LENGTH(name) AS name_length
FROM students
ORDER BY name_length DESC;


-- Longest names
SELECT
    name,
    LENGTH(name) AS name_length
FROM students
ORDER BY name_length DESC
LIMIT 3;


-- Length of department names
SELECT
    department,
    LENGTH(department) AS department_length
FROM students;