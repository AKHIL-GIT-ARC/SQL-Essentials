SELECT *
FROM students;

-- Students aged 20
SELECT *
FROM students
WHERE age = 20;

-- Students from CSE AIML
SELECT *
FROM students
WHERE department = 'CSE AIML';

-- Students with CGPA greater than 8.5
SELECT *
FROM students
WHERE cgpa > 8.5;

-- Students whose age is not 20
SELECT *
FROM students
WHERE age != 20;

-- Students from CSE AIML AND age 20
SELECT *
FROM students
WHERE department = 'CSE AIML'
AND age = 20;

-- Students from IT OR ECE
SELECT *
FROM students
WHERE department = 'IT'
OR department = 'ECE';

-- Students NOT from IT
SELECT *
FROM students
WHERE NOT department = 'IT';