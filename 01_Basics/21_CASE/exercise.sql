-- =====================================
-- CASE Statement
-- =====================================

-- View all students
SELECT *
FROM students;

-- Student performance based on CGPA
SELECT
    name,
    cgpa,
    CASE
        WHEN cgpa >= 9 THEN 'Excellent'
        WHEN cgpa >= 8 THEN 'Good'
        ELSE 'Average'
    END AS performance
FROM students;

-- Age category
SELECT
    name,
    age,
    CASE
        WHEN age < 20 THEN 'Teen'
        WHEN age <= 22 THEN 'Young Adult'
        ELSE 'Adult'
    END AS age_group
FROM students;

-- Country status
SELECT
    name,
    country,
    CASE
        WHEN country = 'India' THEN 'Domestic'
        ELSE 'International'
    END AS student_type
FROM students;