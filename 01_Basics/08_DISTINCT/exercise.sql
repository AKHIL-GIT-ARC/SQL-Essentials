SELECT department
FROM students;

-- Show unique departments
SELECT DISTINCT department
FROM students;

-- Show unique ages
SELECT DISTINCT age
FROM students;

-- Show unique countries
SELECT DISTINCT country
FROM students;

-- Show unique department and country combinations
SELECT DISTINCT
    department,
    country
FROM students;

-- Unique departments in alphabetical order
SELECT DISTINCT department
FROM students
ORDER BY department;

-- Unique departments (first 2 only)
SELECT DISTINCT department
FROM students
ORDER BY department
LIMIT 2;