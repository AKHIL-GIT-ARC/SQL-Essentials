-- =====================================
-- COMBINING CONDITIONS
-- =====================================

-- Students aged 20 or older with CGPA 8 or higher
SELECT *
FROM students
WHERE age >= 20
AND cgpa >= 8;

-- Students aged 20 or older and either
-- have CGPA 8 or higher or belong to CSE
SELECT *
FROM students
WHERE age >= 20
AND (
    cgpa >= 8
    OR department = 'CSE'
);

-- Students from CSE with CGPA 8 or higher
-- OR AIML students with CGPA 8.5 or higher
SELECT *
FROM students
WHERE (
    department = 'CSE'
    AND cgpa >= 8
)
OR (
    department = 'AIML'
    AND cgpa >= 8.5
);

-- Students from selected departments
-- with CGPA 8 or higher
SELECT *
FROM students
WHERE department IN ('CSE', 'AIML')
AND cgpa >= 8;

-- Students between ages 18 and 22
-- with CGPA 8 or higher
SELECT *
FROM students
WHERE age BETWEEN 18 AND 22
AND cgpa >= 8;

-- Exclude CSE students with CGPA 9 or higher
SELECT *
FROM students
WHERE NOT (
    department = 'CSE'
    AND cgpa >= 9
);

-- Complex condition
SELECT *
FROM students
WHERE age BETWEEN 18 AND 22
AND department IN ('CSE', 'AIML')
AND (
    cgpa >= 8
    OR country = 'India'
);

-- Another realistic filter
SELECT *
FROM students
WHERE (
    country = 'India'
    OR country = 'USA'
)
AND age >= 18
AND NOT department = 'Civil';