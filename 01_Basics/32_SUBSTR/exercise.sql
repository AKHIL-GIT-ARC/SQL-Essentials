-- =====================================
-- SUBSTR
-- =====================================

-- Basic examples

SELECT SUBSTR('SQL Handbook', 1, 3);

SELECT SUBSTR('SQLite', 4, 3);

SELECT SUBSTR('SQL Handbook', 5);

-- Extract first three characters of names
SELECT
    name,
    SUBSTR(name, 1, 3) AS short_name
FROM students;

-- Extract first character
SELECT
    name,
    SUBSTR(name, 1, 1) AS initial
FROM students;

-- Extract first two characters of departments
SELECT
    department,
    SUBSTR(department, 1, 2) AS department_code
FROM students;

-- Extract email domain
SELECT
    email,
    SUBSTR(email, INSTR(email, '@') + 1) AS email_domain
FROM students;

-- Extract last three characters of names
SELECT
    name,
    SUBSTR(name, -3) AS last_three
FROM students;