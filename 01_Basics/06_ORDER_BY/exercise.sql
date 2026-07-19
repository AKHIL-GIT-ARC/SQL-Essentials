SELECT *
FROM students;

-- Sort by name (A-Z)
SELECT *
FROM students
ORDER BY name;

-- Sort by age (smallest to largest)
SELECT *
FROM students
ORDER BY age;

-- Sort by age (largest to smallest)
SELECT *
FROM students
ORDER BY age DESC;

-- Sort by CGPA (highest first)
SELECT *
FROM students
ORDER BY cgpa DESC;

-- Sort by department
SELECT *
FROM students
ORDER BY department;

-- Sort by department, then CGPA
SELECT *
FROM students
ORDER BY department ASC,
         cgpa DESC;

-- Students from CSE AIML sorted by CGPA
SELECT *
FROM students
WHERE department = 'CSE AIML'
ORDER BY cgpa DESC;