-- Delete old table
DROP TABLE IF EXISTS students;

-- Create table
CREATE TABLE students (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    age INTEGER,
    department TEXT,
    cgpa REAL,
    email TEXT UNIQUE,
    country TEXT DEFAULT 'India'
);

-- Show all tables
SELECT name
FROM sqlite_master
WHERE type = 'table';

-- Show table structure
SELECT sql
FROM sqlite_master
WHERE name = 'students';