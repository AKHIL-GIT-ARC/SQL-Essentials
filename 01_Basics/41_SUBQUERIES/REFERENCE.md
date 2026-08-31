# SUBQUERIES

## What is a Subquery?

A subquery is a query written inside another SQL query.

The inner query runs first, and its result is used by the outer query.

## Syntax

```sql
SELECT *
FROM table_name
WHERE column_name operator (
    SELECT column_name
    FROM table_name
);
```

## Example

```sql
SELECT *
FROM students
WHERE cgpa > (
    SELECT AVG(cgpa)
    FROM students
);
```

The inner query finds the average CGPA.

The outer query returns students whose CGPA is greater than the average.

## Subquery with WHERE

```sql
SELECT *
FROM students
WHERE age > (
    SELECT AVG(age)
    FROM students
);
```

This returns students older than the average age.

## Subquery with Aggregate Functions

```sql
SELECT *
FROM students
WHERE cgpa = (
    SELECT MAX(cgpa)
    FROM students
);
```

This returns the student or students with the highest CGPA.

## Subquery with IN

```sql
SELECT *
FROM students
WHERE department IN (
    SELECT department
    FROM students
    WHERE cgpa >= 9
);
```

The inner query finds departments containing students with a CGPA of 9 or higher.

The outer query returns students from those departments.

## Subquery with Comparison

```sql
SELECT *
FROM students
WHERE age < (
    SELECT MAX(age)
    FROM students
);
```

This returns students who are younger than the oldest student.

## How a Subquery Works

```text
Outer Query
    ↑
uses result from
    ↑
Inner Query
```

Example:

```text
SELECT AVG(cgpa)
FROM students;

        ↓

8.4

        ↓

SELECT *
FROM students
WHERE cgpa > 8.4;
```

## Common Uses

- Compare values with averages
- Find maximum or minimum values
- Use the result of another query
- Filter records dynamically
- Build complex queries