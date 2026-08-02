-- =====================================
-- IS NULL
-- =====================================

-- View all students
SELECT *
FROM students;

-- Students without phone numbers
SELECT *
FROM students
WHERE phone IS NULL;

-- Students with phone numbers
SELECT *
FROM students
WHERE phone IS NOT NULL;

-- Students without city
SELECT *
FROM students
WHERE present_city IS NULL;

-- Students with city
SELECT *
FROM students
WHERE present_city IS NOT NULL;

-- Students with CGPA
SELECT *
FROM students
WHERE cgpa IS NOT NULL;