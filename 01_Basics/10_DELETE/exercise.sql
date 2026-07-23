SELECT *
FROM students;

-- Delete student with ID 4
DELETE FROM students
WHERE id = 4;

-- Verify
SELECT *
FROM students;

-- Delete student named Rahul
DELETE FROM students
WHERE name = 'Rahul';

-- Verify
SELECT *
FROM students;

-- Insert Rahul again for practice
INSERT INTO students
(name, age, department, cgpa, email)
VALUES
('Rahul', 21, 'IT', 8.40, 'rahul_new@gmail.com');

-- Verify insertion
SELECT *
FROM students;

-- Delete students from IT department
DELETE FROM students
WHERE department = 'IT';

-- Verify
SELECT *
FROM students;