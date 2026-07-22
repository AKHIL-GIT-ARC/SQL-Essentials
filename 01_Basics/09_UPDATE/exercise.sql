SELECT *
FROM students;

-- Update CGPA of Akhil
UPDATE students
SET cgpa = 9.20
WHERE name = 'Akhil';

-- Verify
SELECT *
FROM students
WHERE name = 'Akhil';

-- Update age
UPDATE students
SET age = 21
WHERE name = 'Om';

-- Verify
SELECT *
FROM students
WHERE name = 'Charan';

-- Update multiple columns
UPDATE students
SET
    department = 'AI & ML',
    country = 'India'
WHERE name = 'Priya';

-- Verify
SELECT *
FROM students
WHERE name = 'Priya';

-- Update using ID
UPDATE students
SET cgpa = 9.75
WHERE id = 4;

-- Verify
SELECT *
FROM students
WHERE id = 4;

-- Display all records
SELECT *
FROM students;