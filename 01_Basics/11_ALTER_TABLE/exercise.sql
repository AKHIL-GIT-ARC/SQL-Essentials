PRAGMA table_info(students);

-- Add phone column
ALTER TABLE students
ADD COLUMN phone TEXT;

-- Verify
PRAGMA table_info(students);

-- Add city column
ALTER TABLE students
ADD COLUMN city TEXT;

-- Verify
PRAGMA table_info(students);

-- Update phone number
UPDATE students
SET phone = '9876543840'
WHERE id = 2;

-- Update city
UPDATE students
SET city = 'Tirupati'
WHERE id = 2;

-- View updated data
SELECT *
FROM students;

-- Rename column city to hometown
ALTER TABLE students
RENAME COLUMN city TO hometown;

-- Verify
PRAGMA table_info(students);

-- View final data
SELECT *
FROM students;