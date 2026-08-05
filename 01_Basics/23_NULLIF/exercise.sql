-- =====================================
-- NULLIF
-- =====================================

-- View all students
SELECT *
FROM students;

-- Replace age 20 with NULL
SELECT
    name,
    NULLIF(age, 20) AS age
FROM students;

-- Replace CGPA 9.8 with NULL
SELECT
    name,
    NULLIF(cgpa, 9.8) AS cgpa
FROM students;

-- Simple examples
SELECT NULLIF(100, 100);
SELECT NULLIF(100, 50);
SELECT NULLIF('SQL', 'SQL');
SELECT NULLIF('SQL', 'Python');

-- Avoid divide by zero
SELECT
    100 / NULLIF(5, 0);
SELECT
    100 / NULLIF(0, 0);