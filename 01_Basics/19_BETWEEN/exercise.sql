-- View all students
SELECT *
FROM students;

-- Students between ages 18 and 21
SELECT *
FROM students
WHERE age BETWEEN 18 AND 21;

-- Students with CGPA between 8.5 and 10
SELECT *
FROM students
WHERE cgpa BETWEEN 8.5 AND 10;

-- Students outside the age range
SELECT *
FROM students
WHERE age NOT BETWEEN 18 AND 20;

-- Students with IDs between 2 and 5
SELECT *
FROM students
WHERE id BETWEEN 2 AND 5;