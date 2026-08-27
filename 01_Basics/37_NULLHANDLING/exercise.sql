-- =====================================
-- NULL HANDLING REVISION
-- =====================================

-- Find NULL values
SELECT *
FROM students
WHERE phone IS NULL;

-- Find non-NULL values
SELECT *
FROM students
WHERE phone IS NOT NULL;

-- Replace NULL with IFNULL()
SELECT
    name,
    IFNULL(phone, 'No Phone') AS phone
FROM students;

-- Replace NULL with COALESCE()
SELECT
    name,
    COALESCE(phone, email, 'No Contact') AS contact
FROM students;

-- NULLIF examples

SELECT NULLIF(10, 10);

SELECT NULLIF(10, 5);

-- Combine NULLIF and COALESCE()
SELECT
    name,
    COALESCE(
        NULLIF(phone, 0),
        'No Phone'
    ) AS phone
FROM students;

-- Find students with missing city
SELECT *
FROM students
WHERE present_city IS NULL;

-- Display default city
SELECT
    name,
    COALESCE(present_city, 'Unknown City') AS city
FROM students;