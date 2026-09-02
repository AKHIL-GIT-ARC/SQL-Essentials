-- =====================================
-- INNER JOIN
-- =====================================

-- Create practice departments table
CREATE TABLE IF NOT EXISTS practice_departments (
    id INTEGER PRIMARY KEY,
    department_name TEXT NOT NULL
);

-- Create practice students table
CREATE TABLE IF NOT EXISTS practice_students (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    department_id INTEGER,
    cgpa REAL
);

-- Clear previous practice data
DELETE FROM practice_students;
DELETE FROM practice_departments;

-- Insert departments
INSERT INTO practice_departments (
    id,
    department_name
)
VALUES
    (1, 'CSE'),
    (2, 'AIML'),
    (3, 'ECE'),
    (4, 'ME');

-- Insert students
INSERT INTO practice_students (
    id,
    name,
    department_id,
    cgpa
)
VALUES
    (1, 'Akhil', 1, 9.2),
    (2, 'Charan', 2, 8.8),
    (3, 'Rahul', 1, 8.5),
    (4, 'Priya', 3, 9.1),
    (5, 'Sneha', 2, 9.4);

-- View practice tables
SELECT *
FROM practice_students;

SELECT *
FROM practice_departments;

-- Basic INNER JOIN
SELECT
    practice_students.name,
    practice_departments.department_name
FROM practice_students
INNER JOIN practice_departments
ON practice_students.department_id = practice_departments.id;

-- INNER JOIN using aliases
SELECT
    s.name,
    d.department_name,
    s.cgpa
FROM practice_students AS s
INNER JOIN practice_departments AS d
ON s.department_id = d.id;

-- INNER JOIN with WHERE
SELECT
    s.name,
    d.department_name,
    s.cgpa
FROM practice_students AS s
INNER JOIN practice_departments AS d
ON s.department_id = d.id
WHERE s.cgpa >= 9;

-- INNER JOIN with ORDER BY
SELECT
    s.name,
    d.department_name,
    s.cgpa
FROM practice_students AS s
INNER JOIN practice_departments AS d
ON s.department_id = d.id
ORDER BY s.cgpa DESC;