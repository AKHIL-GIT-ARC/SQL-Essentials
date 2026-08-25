-- =====================================
-- DATE & TIME
-- =====================================

-- Current UTC date

SELECT date('now');

-- Current UTC time

SELECT time('now');

-- Current UTC date and time

SELECT datetime('now');

-- Current local date and time

SELECT datetime('now', 'localtime');

-- Add days

SELECT date('now', '+7 days');

-- Subtract days

SELECT date('now', '-7 days');

-- Add a month

SELECT date('now', '+1 month');

-- Add a year

SELECT date('now', '+1 year');

-- Extract date from datetime

SELECT date('2026-08-25 22:30:00');

-- Extract time from datetime

SELECT time('2026-08-25 22:30:00');

-- Current timestamp for every student
SELECT
    name,
    datetime('now', 'localtime') AS checked_at
FROM students;