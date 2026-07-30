-- =====================================
-- LIKE
-- =====================================

SELECT *
FROM students;

-- Names starting with A
SELECT *
FROM students
WHERE name LIKE 'A%';

-- Names ending with a
SELECT *
FROM students
WHERE name LIKE '%a';

-- Names containing ar
SELECT *
FROM students
WHERE name LIKE '%ar%';

-- Names with exactly two characters
SELECT *
FROM students
WHERE name LIKE '__';

-- Departments containing AI
SELECT *
FROM students
WHERE department LIKE '%AI%';

-- Names that don't start with A
SELECT *
FROM students
WHERE name NOT LIKE 'A%';

-- LIKE with another condition
SELECT *
FROM students
WHERE name LIKE 'A%'
AND cgpa >= 8.5;