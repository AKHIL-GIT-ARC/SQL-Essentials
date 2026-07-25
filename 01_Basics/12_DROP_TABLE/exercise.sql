-- Create a temporary table for practice
CREATE TABLE IF NOT EXISTS practice_courses (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    course_name TEXT NOT NULL,
    duration INTEGER
);

-- Insert sample data
INSERT INTO practice_courses (course_name, duration)
VALUES
    ('Python', 60),
    ('SQL', 45),
    ('Java', 90);

-- View data before dropping
SELECT *
FROM practice_courses;

-- Drop the table
DROP TABLE practice_courses;

-- Safe DROP if table may not exist
DROP TABLE IF EXISTS practice_courses;