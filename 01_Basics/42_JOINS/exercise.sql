-- =====================================
-- JOINS INTRODUCTION
-- =====================================

-- Create departments table
CREATE TABLE IF NOT EXISTS departments (
    id INTEGER PRIMARY KEY,
    department_name TEXT NOT NULL
);

-- Insert departments
INSERT OR IGNORE INTO departments (
    id,
    department_name
)
VALUES
    (1, 'CSE'),
    (2, 'AIML'),
    (3, 'ECE'),
    (4, 'ME');

-- View departments
SELECT *
FROM departments;

-- Check the students table
SELECT *
FROM students;

-- Example relationship
SELECT
    students.name,
    students.department
FROM students;

-- JOIN concept example
SELECT
    students.name,
    departments.department_name
FROM students
JOIN departments
ON students.department_id = departments.id;