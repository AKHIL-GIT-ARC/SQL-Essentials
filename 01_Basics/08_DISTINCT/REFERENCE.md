# DISTINCT

## Purpose

`DISTINCT` removes duplicate values from the query result.
It returns only unique values.

---

## Syntax

```sql
SELECT DISTINCT column_name
FROM table_name;
```

---

## Basic Examples

### Show unique departments

```sql
SELECT DISTINCT department
FROM students;
```

---

### Show unique ages

```sql
SELECT DISTINCT age
FROM students;
```

---

### Show unique department and country combinations

```sql
SELECT DISTINCT department, country
FROM students;
```

Both columns together must be unique.

---

## Visual

Table

| id | name | department |
|----|------|------------|
|1|Akhil|CSE AIML|
|2|Bharath|IT|
|3|Charan|CSE AIML|
|4|Ravi|ECE|
|5|Kiran|IT|

Query

```sql
SELECT DISTINCT department
FROM students;
```

Result

| department |
|------------|
|CSE AIML|
|IT|
|ECE|

---

## DISTINCT vs SELECT

Without DISTINCT

```sql
SELECT department
FROM students;
```

Duplicates are returned.

With DISTINCT

```sql
SELECT DISTINCT department
FROM students;
```
Only unique values are returned.

---

## Best Practices

- Use DISTINCT only when necessary.
- Combine with ORDER BY for cleaner output.
- Works on one or multiple columns.

---

## Common Mistakes

❌

```sql
DISTINCT department;
```

✔

```sql
SELECT DISTINCT department
FROM students;
```

---

❌ Assuming DISTINCT removes duplicate rows from the table.
It only removes duplicates in the query result.

---

## Interview Questions

### What does DISTINCT do?

Returns only unique values.

---

### Can DISTINCT be used with multiple columns?

Yes.

```sql
SELECT DISTINCT department, country
FROM students;
```

---

### Does DISTINCT modify the table?

No.It only affects the query result.

---

## Summary

- Removes duplicate values.
- Returns unique records.
- Works with one or more columns.
- Does not change the table data.