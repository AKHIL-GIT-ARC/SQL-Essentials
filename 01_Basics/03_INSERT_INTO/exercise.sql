-- Insert one record
INSERT INTO students (
    name,
    age,
    department,
    cgpa,
    email
)
VALUES (
    'Akhil',
    20,
    'CSE AIML',
    8.90,
    'akhil1212@gmail.com'
);

-- Insert multiple records

INSERT INTO students (
    name,
    age,
    department,
    cgpa,
    email
)
VALUES
(
    'Charan',
    20,
    'AIML',
    9.8,
    'charan@gmail.com'
),
(
    'Om',
    19,
    'CSE',
    9.20,
    'om@gmail.com'
),
(
    'Priya',
    22,
    'ECE',
    8.75,
    'priya@gmail.com'
);

-- Verify
SELECT * FROM students;