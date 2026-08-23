-- =====================================
-- INSTR
-- =====================================

-- Basic examples

SELECT INSTR('SQL Handbook', 'Handbook');

SELECT INSTR('SQLite', 'L');

SELECT INSTR('SQLite', 't');

-- Text not found
SELECT INSTR('SQLite', 'Python');

-- Find @ position in emails
SELECT
    email,
    INSTR(email, '@') AS at_position
FROM students;

-- Extract email domain
SELECT
    email,
    SUBSTR(email, INSTR(email, '@') + 1) AS email_domain
FROM students;

-- Find position of a character in names
SELECT
    name,
    INSTR(name, 'a') AS a_position
FROM students;

-- Find position of AI in department
SELECT
    department,
    INSTR(department, 'AI') AS ai_position
FROM students;