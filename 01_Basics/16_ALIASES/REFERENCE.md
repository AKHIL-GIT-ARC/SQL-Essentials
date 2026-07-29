# ALIASES

## Purpose

An alias gives a temporary name to a column or table.
Aliases make SQL queries and their results easier to read.
The original column or table name is not changed.

---

## Column Alias

### Syntax

```sql
SELECT column_name AS alias_name
FROM table_name;
```

Example:

```sql
SELECT name AS student_name
FROM students;
```

Instead of displaying:

```text
name
```

the result displays:

```text
student_name
```

---

## Using Alias with Multiple Columns

```sql
SELECT
    name AS student_name,
    cgpa AS student_cgpa
FROM students;
```

---

## Alias with Aggregate Functions

Aliases are especially useful with calculated results.

```sql
SELECT COUNT(*) AS total_students
FROM students;
```

```sql
SELECT AVG(cgpa) AS average_cgpa
FROM students;
```

Without an alias, the result heading may appear as:

```text
AVG(cgpa)
```

With an alias:

```text
average_cgpa
```

---

## Table Alias

A table can also have a temporary shorter name.

### Syntax

```sql
SELECT alias.column_name
FROM table_name AS alias;
```

Example:

```sql
SELECT s.name, s.cgpa
FROM students AS s;
```

Here:

```text
students → s
```

So:

```sql
s.name
```

means:

```sql
students.name
```

Table aliases become especially useful when working with JOINs.

---

## AS is Optional

SQLite allows:

```sql
SELECT name student_name
FROM students;
```

But this is clearer:

```sql
SELECT name AS student_name
FROM students;
```

Using `AS` makes the intention obvious.

---

## Alias with Spaces

If an alias contains spaces, quote it.

```sql
SELECT name AS "Student Name"
FROM students;
```

Result:

```text
Student Name
------------
Akhil
Rahul
```

For queries and application code, simple aliases such as `student_name` are usually easier to work with.

---

## Alias with Calculations

```sql
SELECT age + 1 AS age_next_year
FROM students;
```

---

## Alias with GROUP BY

```sql
SELECT
    department,
    COUNT(*) AS total_students
FROM students
GROUP BY department;
```

---

## Alias with ORDER BY

```sql
SELECT
    name,
    cgpa AS score
FROM students
ORDER BY score DESC;
```

The alias can be used to sort the result.

---

## Best Practices

- Use meaningful aliases.
- Use aliases for calculated values.
- Keep table aliases short and understandable.
- Prefer `AS` for readability.
- Avoid confusing or meaningless aliases.

---

## Common Mistakes

### Assuming an alias renames the actual column

```sql
SELECT name AS student_name
FROM students;
```

This does not permanently rename `name`.

Check:

```sql
PRAGMA table_info(students);
```

The actual column is still `name`.

---

### Using unclear aliases

Avoid:

```sql
SELECT cgpa AS x
FROM students;
```

Prefer:

```sql
SELECT cgpa AS student_cgpa
FROM students;
```

---

## Interview Questions

### What is an alias in SQL?

A temporary name assigned to a column or table.

### Does an alias permanently rename a column?

No. It only affects the query.

### What keyword is commonly used to create an alias?

`AS`.

### Can tables have aliases?

Yes.

```sql
FROM students AS s
```

### Why are table aliases useful?

They make queries shorter and become particularly useful when multiple tables are involved.

---

## Summary

- Aliases provide temporary names.
- `AS` is commonly used to define aliases.
- Columns and tables can both have aliases.
- Aliases improve readability.
- They do not modify the database structure.