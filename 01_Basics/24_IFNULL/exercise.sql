-- =====================================
-- IFNULL
-- =====================================

-- View all students
SELECT *
FROM students;

-- Replace NULL phone numbers
SELECT
    name,
    IFNULL(phone, 'No Phone') AS phone
FROM students;

-- Replace NULL city
SELECT
    name,
    IFNULL(present_city, 'Unknown City') AS city
FROM students;

-- Replace NULL CGPA
SELECT
    name,
    IFNULL(cgpa, 0) AS cgpa
FROM students;

-- Simple examples
SELECT IFNULL(NULL, 'SQL');

SELECT IFNULL('SQLite', 'SQL');

SELECT IFNULL(NULL, 100);

SELECT IFNULL(50, 100);