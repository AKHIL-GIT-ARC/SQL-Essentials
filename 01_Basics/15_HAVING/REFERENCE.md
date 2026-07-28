# HAVING

## Purpose

`HAVING` filters groups created using `GROUP BY`.
It is commonly used with aggregate functions such as:
- `COUNT()`
- `SUM()`
- `AVG()`
- `MIN()`
- `MAX()`

---

## Syntax
```sql
SELECT column_name, aggregate_function(column_name)
FROM table_name
GROUP BY column_name
HAVING condition;
```

---

## Basic Example

```sql
SELECT department, COUNT(*) AS total_students
FROM students
GROUP BY department
HAVING COUNT(*) > 1;
```
This returns only departments containing more than one student.

---

## HAVING with AVG()

```sql
SELECT department, AVG(cgpa) AS average_cgpa
FROM students
GROUP BY department
HAVING AVG(cgpa) > 8.5;
```
Only departments whose average CGPA is greater than `8.5` are returned.

---

## HAVING with COUNT()
```sql
SELECT department, COUNT(*) AS total_students
FROM students
GROUP BY department
HAVING COUNT(*) >= 2;
```

---

## HAVING with MIN()

```sql
SELECT department, MIN(cgpa) AS lowest_cgpa
FROM students
GROUP BY department
HAVING MIN(cgpa) >= 8.0;
```

---

## HAVING with MAX()

```sql
SELECT department, MAX(cgpa) AS highest_cgpa
FROM students
GROUP BY department
HAVING MAX(cgpa) > 9.0;
```

---

## WHERE vs HAVING

| WHERE | HAVING |
|---|---|
| Filters rows | Filters groups |
| Applied before grouping | Applied after grouping |
| Commonly uses regular column conditions | Commonly uses aggregate conditions |

Example:

```sql
SELECT department, AVG(cgpa) AS average_cgpa
FROM students
WHERE age >= 20
GROUP BY department
HAVING AVG(cgpa) > 8.5;
```

`WHERE` first keeps students aged 20 or above.
`GROUP BY` then groups those students by department.
`HAVING` keeps only groups whose average CGPA is greater than 8.5.

---

## Logical Order

```text
FROM
 ↓
WHERE
 ↓
GROUP BY
 ↓
HAVING
 ↓
SELECT
 ↓
ORDER BY
 ↓
LIMIT
```

---

## HAVING with ORDER BY

```sql
SELECT
    department,
    AVG(cgpa) AS average_cgpa
FROM students
GROUP BY department
HAVING AVG(cgpa) > 8.5
ORDER BY average_cgpa DESC;
```

---

## Best Practices

- Use `WHERE` for row-level filtering.
- Use `HAVING` for aggregate/group filtering.
- Usually use `HAVING` with `GROUP BY`.
- Use aliases to make aggregate results readable.
- Use `WHERE` before grouping when possible to reduce unnecessary rows.

---

## Common Mistakes

### Using WHERE with an aggregate result

Wrong:

```sql
SELECT department, AVG(cgpa)
FROM students
WHERE AVG(cgpa) > 8.5
GROUP BY department;
```

Correct:

```sql
SELECT department, AVG(cgpa)
FROM students
GROUP BY department
HAVING AVG(cgpa) > 8.5;
```

### Using HAVING when WHERE is enough

Instead of:

```sql
SELECT department, COUNT(*)
FROM students
GROUP BY department
HAVING department = 'CSE AIML';
```

Prefer:

```sql
SELECT department, COUNT(*)
FROM students
WHERE department = 'CSE AIML'
GROUP BY department;
```

---

## Interview Questions

### What is HAVING?

`HAVING` filters groups produced by `GROUP BY`.

### What is the difference between WHERE and HAVING?

`WHERE` filters individual rows before grouping.
`HAVING` filters groups after grouping.

### Can HAVING use aggregate functions?

Yes.
```sql
HAVING AVG(cgpa) > 8.5
```

### Can WHERE use aggregate functions directly?

Not for filtering grouped aggregate results. Use `HAVING` for that purpose.

### Can WHERE and HAVING be used together?

Yes. `WHERE` filters rows first and `HAVING` filters the resulting groups.

---

## Summary

- `HAVING` filters grouped results.
- Commonly used with `GROUP BY`.
- Supports aggregate conditions.
- `WHERE` filters rows.
- `HAVING` filters groups.