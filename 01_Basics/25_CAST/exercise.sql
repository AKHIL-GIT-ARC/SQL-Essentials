-- =====================================
-- CAST
-- =====================================

-- TEXT to INTEGER
SELECT CAST('100' AS INTEGER);

-- TEXT to REAL
SELECT CAST('8.5' AS REAL);

-- INTEGER to TEXT
SELECT CAST(100 AS TEXT);

-- REAL to INTEGER
SELECT CAST(8.9 AS INTEGER);


-- Convert age to TEXT
SELECT
    name,
    age,
    CAST(age AS TEXT) AS age_text
FROM students;


-- Convert CGPA to INTEGER
SELECT
    name,
    cgpa,
    CAST(cgpa AS INTEGER) AS cgpa_integer
FROM students;


-- Convert CGPA to TEXT
SELECT
    name,
    CAST(cgpa AS TEXT) AS cgpa_text
FROM students;