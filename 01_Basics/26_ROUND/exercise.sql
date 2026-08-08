-- =====================================
-- ROUND
-- =====================================

-- Basic rounding

SELECT ROUND(8.756);

SELECT ROUND(8.756, 1);

SELECT ROUND(8.756, 2);

SELECT ROUND(8.756, 3);

-- Round CGPA
SELECT
    name,
    cgpa,
    ROUND(cgpa, 2) AS rounded_cgpa
FROM students;


-- Average CGPA
SELECT
    ROUND(AVG(cgpa), 2) AS average_cgpa
FROM students;


-- Average CGPA by department
SELECT
    department,
    ROUND(AVG(cgpa), 2) AS average_cgpa
FROM students
GROUP BY department;


-- ROUND with calculation
SELECT
    name,
    cgpa,
    ROUND(cgpa * 10, 1) AS calculated_score
FROM students;