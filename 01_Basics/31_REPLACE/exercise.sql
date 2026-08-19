
### `exercise.sql`

-- =====================================
-- REPLACE
-- =====================================

-- Basic example

SELECT REPLACE('Hello World', 'World', 'SQLite');

SELECT REPLACE('SQL Handbook', ' ', '_');

-- Replace characters

SELECT REPLACE('Akhil', 'A', 'X');

SELECT REPLACE('Hello', 'l', 'L');

-- Replace text in student names
SELECT
    name,
    REPLACE(name, 'A', 'X') AS modified_name
FROM students;

-- Replace domain in emails
SELECT
    email,
    REPLACE(email, 'gmail.com', 'example.com') AS new_email
FROM students;

-- Replace department text
SELECT
    department,
    REPLACE(department, 'AIML', 'AI & ML') AS updated_department
FROM students;

-- Replace spaces with underscores
SELECT
    name,
    REPLACE(name, ' ', '_') AS formatted_name
FROM students;