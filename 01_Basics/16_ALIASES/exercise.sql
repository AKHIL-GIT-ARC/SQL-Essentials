-- =====================================
-- ALIASES
-- =====================================

SELECT *
FROM students;

-- Column alias
SELECT
    name AS student_name,
    age AS student_age
FROM students;

-- Multiple aliases
SELECT
    name AS student_name,
    department AS student_department,
    cgpa AS student_cgpa
FROM students;

-- Alias with aggregate function
SELECT COUNT(*) AS total_students
FROM students;
SELECT ROUND(AVG(cgpa), 2) AS average_cgpa
FROM students;

-- Alias with calculation
SELECT
    name,
    age,
    age + 1 AS age_next_year
FROM students;

-- Table alias
SELECT
    s.name,
    s.department,
    s.cgpa
FROM students AS s;

-- Alias with GROUP BY
SELECT
    department,
    COUNT(*) AS total_students,
    ROUND(AVG(cgpa), 2) AS average_cgpa
FROM students
GROUP BY department;

-- Alias with ORDER BY
SELECT
    name AS student_name,
    cgpa AS score
FROM students
ORDER BY score DESC;