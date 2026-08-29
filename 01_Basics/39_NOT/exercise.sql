-- =====================================
-- NOT
-- =====================================

-- Students not from India
SELECT *
FROM students
WHERE NOT country = 'India';

-- Students younger than 20
SELECT *
FROM students
WHERE NOT age >= 20;

-- Students who do not have CGPA 8 or higher
SELECT *
FROM students
WHERE NOT cgpa >= 8;

-- Students not from CSE
SELECT *
FROM students
WHERE NOT department = 'CSE';

-- Reverse an AND condition
SELECT *
FROM students
WHERE NOT (
    age >= 20
    AND cgpa >= 8
);

-- Reverse an OR condition
SELECT *
FROM students
WHERE NOT (
    department = 'CSE'
    OR department = 'AIML'
);

-- NOT IN
SELECT *
FROM students
WHERE department NOT IN ('CSE', 'AIML');

-- NOT BETWEEN
SELECT *
FROM students
WHERE age NOT BETWEEN 18 AND 22;