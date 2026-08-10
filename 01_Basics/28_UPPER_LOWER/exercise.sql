-- =====================================
-- UPPER & LOWER
-- =====================================

-- Convert text to uppercase
SELECT UPPER('hello');
SELECT UPPER('sql handbook');

-- Convert text to lowercase
SELECT LOWER('HELLO');
SELECT LOWER('SQL HANDBOOK');

-- Convert student names to uppercase
SELECT
    name,
    UPPER(name) AS uppercase_name
FROM students;

-- Convert student names to lowercase
SELECT
    name,
    LOWER(name) AS lowercase_name
FROM students;

-- Convert departments to uppercase
SELECT
    department,
    UPPER(department) AS department_name
FROM students;

-- Convert emails to lowercase
SELECT
    name,
    LOWER(email) AS email
FROM students;