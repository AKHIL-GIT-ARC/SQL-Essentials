# LIMIT

## Purpose

`LIMIT` restricts the number of rows returned by a query.
It is commonly used with `SELECT` to retrieve only the required number of records.

---

## Syntax

```sql
SELECT column_name
FROM table_name
LIMIT number;
```

---

## Basic Examples

### Show first 2 students

```sql
SELECT *
FROM students
LIMIT 2;
```

---

### Show first 3 student names

```sql
SELECT name
FROM students
LIMIT 3;
```

---

### Show top 2 students by CGPA

```sql
SELECT *
FROM students
ORDER BY cgpa DESC
LIMIT 2;
```

---

## LIMIT with OFFSET

Skip records before returning results.

```sql
SELECT *
FROM students
LIMIT 2 OFFSET 1;
```

This skips the first row and returns the next two.

---

## Visual

Table
| id | name | cgpa |
|----|------|------|
|1|Akhil|8.90|
|2|Om|8.45|
|3|Charan|9.20|
|4|Chitra|8.75|

Query

```sql
SELECT *
FROM students
LIMIT 2;
```

Result
| id | name |
|----|------|
|1|Akhil|
|2|Rahul|

---

## Best Practices

- Use LIMIT when displaying large datasets.
- Combine LIMIT with ORDER BY for meaningful results.
- Use OFFSET for pagination.

---

## Common Mistakes

❌

```sql
LIMIT;
```

✔

```sql
LIMIT 5;
```

---

❌

Using LIMIT without ORDER BY when expecting the "top" records.

✔

```sql
SELECT *
FROM students
ORDER BY cgpa DESC
LIMIT 3;
```

---

## Interview Questions

### What is LIMIT?

Restricts the number of rows returned.

---

### Can LIMIT be used without ORDER BY?

Yes.

However, the returned rows may not be in the order you expect.

---

### What is OFFSET?

It skips a specified number of rows before returning results.

---

## Summary

- Restricts query results.
- Often used with SELECT.
- Works best with ORDER BY.
- Supports pagination using OFFSET.