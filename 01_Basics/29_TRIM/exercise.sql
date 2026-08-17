### `exercise.sql`
-- =====================================
-- TRIM
-- =====================================

-- Basic examples
SELECT TRIM('   SQLite   ');
SELECT TRIM('   SQL Handbook   ');
SELECT TRIM('     Hello World     ');

-- Trim student names
SELECT
    name,
    TRIM(name) AS cleaned_name
FROM students;

-- Trim department names
SELECT
    department,
    TRIM(department) AS cleaned_department
FROM students;

-- Compare cleaned values
SELECT
    name,
    TRIM(name) AS cleaned_name
FROM students
WHERE TRIM(name) = 'Akhil';

-- Spaces between words are not removed
SELECT TRIM('   SQL   Handbook   ');