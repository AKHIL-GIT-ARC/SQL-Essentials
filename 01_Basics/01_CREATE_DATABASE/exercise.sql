-- SQLite does not support:
--
-- CREATE DATABASE company;
--
-- Instead, a database is created automatically
-- when a new database file is opened.

-- To create a database from the terminal:
--
-- sqlite3 company.db
--
-- SQLite will automatically create company.db
-- if it does not already exist.

-- Verify the current database

PRAGMA database_list;

-- Display SQLite version

SELECT sqlite_version();

-- Display current date

SELECT DATE('now');

-- Display current time

SELECT TIME('now');

-- Display current date and time

SELECT DATETIME('now');