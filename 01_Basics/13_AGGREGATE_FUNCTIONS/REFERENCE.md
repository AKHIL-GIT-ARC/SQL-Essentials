# Aggregate Functions

## Purpose

Aggregate functions perform calculations on multiple rows and return a single result.
Common aggregate functions:
| Function | Purpose |
|---|---|
| `COUNT()` | Counts values or rows |
| `SUM()` | Calculates the total |
| `AVG()` | Calculates the average |
| `MIN()` | Finds the smallest value |
| `MAX()` | Finds the largest value |

---

## COUNT()
Counts rows or non-NULL values.
```sql
SELECT COUNT(*)
FROM students;
```

Count values from a specific column:
```sql
SELECT COUNT(cgpa)
FROM students;
```

`COUNT(*)` counts rows, while `COUNT(column)` ignores NULL values in that column.
---

## SUM()

Calculates the total of numeric values.
```sql
SELECT SUM(age)
FROM students;
```
---

## AVG()

Calculates the average of numeric values.
```sql
SELECT AVG(cgpa)
FROM students;
```
---

## MIN()

Returns the smallest value.
```sql
SELECT MIN(age)
FROM students;
```
---

## MAX()

Returns the largest value.
```sql
SELECT MAX(cgpa)
FROM students;
```
---

## Using Aliases

Aliases make calculated results easier to understand.
```sql
SELECT AVG(cgpa) AS average_cgpa
FROM students;
```
---

## Using WHERE

Aggregate functions can calculate values from filtered rows.
```sql
SELECT AVG(cgpa) AS average_cgpa
FROM students
WHERE department = 'CSE AIML';
```
Only matching students are included in the calculation.

---

## Multiple Aggregates

Multiple calculations can be performed in one query.
```sql
SELECT
    COUNT(*) AS total_students,
    AVG(cgpa) AS average_cgpa,
    MIN(cgpa) AS lowest_cgpa,
    MAX(cgpa) AS highest_cgpa
FROM students;
```
---

## NULL Values

Most aggregate functions ignore NULL values.
```sql
COUNT(cgpa)
AVG(cgpa)
SUM(cgpa)
MIN(cgpa)
MAX(cgpa)
```
`COUNT(*)` is different because it counts rows regardless of NULL values.
---

## Best Practices

- Use aliases for calculated results.
- Use `COUNT(*)` when counting rows.
- Use aggregate functions on appropriate data types.
- Remember that most aggregate functions ignore NULL values.
- Combine aggregates with `WHERE` when only certain rows should be calculated.

---
## Common Mistakes

### Confusing COUNT(*) and COUNT(column)

```sql
SELECT COUNT(*)
FROM students;
```
Counts all rows.

```sql
SELECT COUNT(cgpa)
FROM students;
```
Counts only rows where `cgpa` is not NULL.

### Using aggregate functions incorrectly

Wrong:
```sql
SELECT AVG(name)
FROM students;
```

`AVG()` should normally be used with numeric data.

---

## Interview Questions

### What is an aggregate function?

A function that performs a calculation on multiple rows and returns a summarized result.

### What are common SQL aggregate functions?

`COUNT()`, `SUM()`, `AVG()`, `MIN()`, and `MAX()`.

### What is the difference between COUNT(*) and COUNT(column)?

`COUNT(*)` counts rows.
`COUNT(column)` counts non-NULL values in that column.

### Do aggregate functions consider NULL values?

Most aggregate functions ignore NULL values.

### Can WHERE be used with aggregate functions?

Yes. `WHERE` filters the rows before the aggregate calculation occurs.

---

## Summary

- `COUNT()` → Count
- `SUM()` → Total
- `AVG()` → Average
- `MIN()` → Minimum
- `MAX()` → Maximum
Aggregate functions summarize data and are especially useful for reports and analysis.