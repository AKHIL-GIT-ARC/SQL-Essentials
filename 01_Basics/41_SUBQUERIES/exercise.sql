-- =====================================
-- SUBQUERIES
-- =====================================

-- Students with CGPA above average
SELECT *
FROM students
WHERE cgpa > (
    SELECT AVG(cgpa)
    FROM students
);

-- Students older than the average age
SELECT *
FROM students
WHERE age > (
    SELECT AVG(age)
    FROM students
);

-- Student with the highest CGPA
SELECT *
FROM students
WHERE cgpa = (
    SELECT MAX(cgpa)
    FROM students
);

-- Student with the lowest CGPA
SELECT *
FROM students
WHERE cgpa = (
    SELECT MIN(cgpa)
    FROM students
);

-- Students younger than the oldest student
SELECT *
FROM students
WHERE age < (
    SELECT MAX(age)
    FROM students
);

-- Students from departments
-- that have at least one student with CGPA 9 or higher
SELECT *
FROM students
WHERE department IN (
    SELECT department
    FROM students
    WHERE cgpa >= 9
);

-- Students with age equal to the youngest age
SELECT *
FROM students
WHERE age = (
    SELECT MIN(age)
    FROM students
);

-- Students with CGPA equal to or above average
SELECT *
FROM students
WHERE cgpa >= (
    SELECT AVG(cgpa)
    FROM students
);