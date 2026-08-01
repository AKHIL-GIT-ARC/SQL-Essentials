# BETWEEN Operator

`BETWEEN` selects values within a given range.

## Syntax

SELECT column
FROM table
WHERE column BETWEEN value1 AND value2;

## Example

SELECT *
FROM students
WHERE age BETWEEN 18 AND 22;
This returns students whose age is between 18 and 22 (inclusive).

## NOT BETWEEN
SELECT *
FROM students
WHERE age NOT BETWEEN 18 AND 22;

## Key Points

- Includes both starting and ending values.
- Works with numbers, dates, and text.
- `NOT BETWEEN` selects values outside the range.