-- View all students
SELECT *
FROM students;

-- Students from selected departments
SELECT *
FROM students
WHERE department IN ('AIML', 'CSE AIML', 'ECE');

-- Students with selected ages
SELECT *
FROM students
WHERE age IN (19, 20);

-- Exclude selected departments
SELECT *
FROM students
WHERE department NOT IN ('AIML', 'ECE');

-- Select specific student IDs
SELECT *
FROM students
WHERE id IN (2, 3, 5);