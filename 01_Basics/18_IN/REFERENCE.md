# IN Operator

`IN` checks whether a value matches any value in a given list.

## Syntax

SELECT column
FROM table
WHERE column IN (value1, value2, value3);

## Example

SELECT *
FROM students
WHERE department IN ('AIML', 'CSE', 'IT');
This returns students belonging to AIML, CSE, or IT.

## NOT IN

`NOT IN` excludes the specified values.

SELECT *
FROM students
WHERE department NOT IN ('AIML', 'CSE');

## Key Points

- `IN` replaces multiple `OR` conditions.
- `NOT IN` excludes multiple values.
- Values are written inside parentheses.
- Text values must use single quotes.