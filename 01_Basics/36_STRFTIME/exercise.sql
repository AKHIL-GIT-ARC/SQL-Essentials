-- =====================================
-- STRFTIME
-- =====================================

-- Extract year

SELECT strftime('%Y', '2026-08-26');

-- Extract month

SELECT strftime('%m', '2026-08-26');

-- Extract day

SELECT strftime('%d', '2026-08-26');

-- Extract multiple parts
SELECT
    strftime('%Y', '2026-08-26') AS year,
    strftime('%m', '2026-08-26') AS month,
    strftime('%d', '2026-08-26') AS day;

-- Format a date

SELECT strftime('%d-%m-%Y', '2026-08-26');

-- Format date and time
SELECT strftime(
    '%d-%m-%Y %H:%M:%S',
    '2026-08-26 21:30:45'
);

-- Current year

SELECT strftime('%Y', 'now');

-- Current month

SELECT strftime('%m', 'now');

-- Current local date and time
SELECT strftime(
    '%Y-%m-%d %H:%M:%S',
    'now',
    'localtime'
);

-- Current date for every student
SELECT
    name,
    strftime('%d-%m-%Y', 'now', 'localtime') AS today
FROM students;