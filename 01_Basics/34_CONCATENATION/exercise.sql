-- =====================================
-- CONCATENATION
-- =====================================

-- Basic concatenation

SELECT 'SQL' || 'Handbook';

SELECT 'SQL' || ' ' || 'Handbook';

-- Combine name and department
SELECT
    name || ' - ' || department AS student_info
FROM students;

-- Combine name and age
SELECT
    name || ' is ' || age || ' years old' AS student_info
FROM students;

-- Combine name and city
SELECT
    name || ' - ' || present_city AS student_location
FROM students;

-- Combine name, department and CGPA
SELECT
    name || ' | ' || department || ' | CGPA: ' || cgpa AS student_details
FROM students;

-- Handle NULL city values
SELECT
    name || ' - ' || COALESCE(present_city, 'Unknown City') AS student_location
FROM students;

-- Create a simple label
SELECT
    '[' || id || '] ' || name AS student_label
FROM students;