-- =====================================
-- GROUP BY
-- =====================================

SELECT *
FROM students;

-- Count students in each department
SELECT
    department,
    COUNT(*) AS total_students
FROM students
GROUP BY department;

-- Average CGPA by department
SELECT
    department,
    AVG(cgpa) AS average_cgpa
FROM students
GROUP BY department;

-- Highest CGPA in each department
SELECT
    department,
    MAX(cgpa) AS highest_cgpa
FROM students
GROUP BY department;

-- Lowest CGPA in each department
SELECT
    department,
    MIN(cgpa) AS lowest_cgpa
FROM students
GROUP BY department;

-- Multiple calculations
SELECT
    department,
    COUNT(*) AS total_students,
    ROUND(AVG(cgpa), 2) AS average_cgpa,
    MIN(cgpa) AS lowest_cgpa,
    MAX(cgpa) AS highest_cgpa
FROM students
GROUP BY department;

-- Filter before grouping
SELECT
    department,
    COUNT(*) AS total_students
FROM students
WHERE cgpa >= 8.5
GROUP BY department;

-- Sort grouped results
SELECT
    department,
    ROUND(AVG(cgpa), 2) AS average_cgpa
FROM students
GROUP BY department
ORDER BY average_cgpa DESC;