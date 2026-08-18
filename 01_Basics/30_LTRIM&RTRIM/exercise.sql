
### `exercise.sql`

-- =====================================
-- LTRIM & RTRIM
-- =====================================

-- Remove spaces from the left

SELECT LTRIM('   SQLite');
SELECT LTRIM('   SQL Handbook   ');

-- Remove spaces from the right
SELECT RTRIM('SQLite   ');
SELECT RTRIM('   SQL Handbook   ');

-- Compare TRIM functions
SELECT TRIM('   SQLite   ');
SELECT LTRIM('   SQLite   ');
SELECT RTRIM('   SQLite   ');

-- Apply LTRIM to student names
SELECT
    name,
    LTRIM(name) AS left_trimmed
FROM students;

-- Apply RTRIM to student names
SELECT
    name,
    RTRIM(name) AS right_trimmed
FROM students;