-- =====================================
-- HAVING
-- =====================================

SELECT *
FROM students;

-- Count students by department
SELECT
    department,
    COUNT(*) AS total_students
FROM students
GROUP BY department;

-- Departments with more than one student
SELECT
    department,
    COUNT(*) AS total_students
FROM students
GROUP BY department
HAVING COUNT(*) > 1;

-- Departments with average CGPA above 8.5
SELECT
    department,
    ROUND(AVG(cgpa), 2) AS average_cgpa
FROM students
GROUP BY department
HAVING AVG(cgpa) > 8.5;

-- Departments with highest CGPA above 9
SELECT
    department,
    MAX(cgpa) AS highest_cgpa
FROM students
GROUP BY department
HAVING MAX(cgpa) > 9.0;

-- WHERE + GROUP BY + HAVING
SELECT
    department,
    COUNT(*) AS total_students,
    ROUND(AVG(cgpa), 2) AS average_cgpa
FROM students
WHERE age >= 20
GROUP BY department
HAVING AVG(cgpa) > 8.5;

-- Sort filtered groups
SELECT
    department,
    ROUND(AVG(cgpa), 2) AS average_cgpa
FROM students
GROUP BY department
HAVING AVG(cgpa) > 8.0
ORDER BY average_cgpa DESC;