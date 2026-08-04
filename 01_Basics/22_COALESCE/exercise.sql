-- =====================================
-- COALESCE
-- =====================================

-- View all students
SELECT *
FROM students;

-- Replace NULL phone numbers
SELECT
    name,
    COALESCE(phone, 'Not Available') AS phone
FROM students;

-- Replace NULL city
SELECT
    name,
    COALESCE(present_city, 'Unknown City') AS city
FROM students;

-- Replace NULL CGPA
SELECT
    name,
    COALESCE(cgpa, 0) AS cgpa
FROM students;

-- Multiple fallback values
SELECT
    name,
    COALESCE(phone, email, 'No Contact') AS contact
FROM students;