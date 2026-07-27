# GROUP BY

## Purpose

`GROUP BY` groups rows that have the same value in one or more columns.
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
GROUP BY column_name;
```

---

## Basic Example

```sql
SELECT department, COUNT(*) AS total_students
FROM students
GROUP BY department;
```

This groups students by department and counts the students in each group.

---

## Visual

Suppose the table contains:

| name | department | cgpa |
|---|---|---:|
| Akhil | CSE | 8.9 |
| Rahul | IT | 8.4 |
| Sneha | CSE | 9.2 |
| Priya | IT | 8.8 |

Query:

```sql
SELECT department, AVG(cgpa) AS average_cgpa
FROM students
GROUP BY department;
```

Result:

| department | average_cgpa |
|---|---:|
| CSE | 9.05 |
| IT | 8.60 |

`GROUP BY` creates a group for each department, then `AVG()` calculates the average inside each group.

---

## GROUP BY with COUNT()

```sql
SELECT department, COUNT(*) AS total_students
FROM students
GROUP BY department;
```

---

## GROUP BY with AVG()

```sql
SELECT department, AVG(cgpa) AS average_cgpa
FROM students
GROUP BY department;
```

---

## GROUP BY with MIN() and MAX()

```sql
SELECT
    department,
    MIN(cgpa) AS lowest_cgpa,
    MAX(cgpa) AS highest_cgpa
FROM students
GROUP BY department;
```

---

## GROUP BY with WHERE

`WHERE` filters rows before they are grouped.

```sql
SELECT department, COUNT(*) AS total_students
FROM students
WHERE cgpa >= 8.5
GROUP BY department;
```

---

## GROUP BY with ORDER BY

```sql
SELECT department, AVG(cgpa) AS average_cgpa
FROM students
GROUP BY department
ORDER BY average_cgpa DESC;
```

---

## Multiple Columns

You can group using multiple columns.
```sql
SELECT department, country, COUNT(*) AS total_students
FROM students
GROUP BY department, country;
```
Each unique department-country combination becomes a group.

---

## Best Practices

- Use `GROUP BY` when you need summaries for categories.
- Combine it with aggregate functions.
- Use aliases for aggregate results.
- Use `WHERE` to filter rows before grouping.
- Use `ORDER BY` when the grouped results need sorting.

---

## Common Mistakes

### Forgetting GROUP BY

```sql
SELECT department, COUNT(*)
FROM students;
```

If you want a count for each department:

```sql
SELECT department, COUNT(*)
FROM students
GROUP BY department;
```

### Confusing WHERE and GROUP BY

`WHERE` filters rows.
`GROUP BY` organizes rows into groups.

### Using WHERE for aggregate conditions

This is incorrect:

```sql
SELECT department, AVG(cgpa)
FROM students
WHERE AVG(cgpa) > 8.5
GROUP BY department;
```

Conditions on aggregate results use `HAVING`, which is covered separately.

---

## Interview Questions

### What does GROUP BY do?

It groups rows with matching values so aggregate calculations can be performed on each group.

### Is GROUP BY an aggregate function?

No. It is a SQL clause commonly used with aggregate functions.

### Can GROUP BY use multiple columns?

Yes.

### What is the difference between WHERE and GROUP BY?

`WHERE` filters rows, while `GROUP BY` groups the remaining rows.

### Can GROUP BY be used with ORDER BY?

Yes. `GROUP BY` creates the groups and `ORDER BY` sorts the resulting groups.

---

## Summary

- `GROUP BY` groups similar rows.
- Commonly used with aggregate functions.
- Can group by one or multiple columns.
- `WHERE` can filter rows before grouping.
- `ORDER BY` can sort grouped results.