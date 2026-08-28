-- =====================================
-- AND & OR
-- =====================================

-- Students aged 20 or older with CGPA 8 or higher
SELECT *
FROM students
WHERE age >= 20
AND cgpa >= 8;

-- Students from either CSE or AIML
SELECT *
FROM students
WHERE department = 'CSE'
OR department = 'AIML';

-- Students aged 20 or older and from India
SELECT *
FROM students
WHERE age >= 20
AND country = 'India';

-- Students with CGPA 9 or higher or age below 20
SELECT *
FROM students
WHERE cgpa >= 9
OR age < 20;

-- Multiple AND conditions
SELECT *
FROM students
WHERE age >= 20
AND cgpa >= 8
AND country = 'India';

-- Combine AND and OR
SELECT *
FROM students
WHERE (age >= 20 AND cgpa >= 8)
OR department = 'CSE';

-- Another combined condition
SELECT *
FROM students
WHERE country = 'India'
AND (cgpa >= 9 OR age < 20);