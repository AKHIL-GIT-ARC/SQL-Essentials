# IS NULL

## Purpose

`IS NULL` is used to find rows where a column contains a NULL value.

NULL represents missing or unknown data.

---

## Syntax

### Find NULL values

```sql
SELECT *
FROM table_name
WHERE column_name IS NULL;
```

### Find NOT NULL values

```sql
SELECT *
FROM table_name
WHERE column_name IS NOT NULL;
```

---

## Basic Examples

### Students without a phone number

```sql
SELECT *
FROM students
WHERE phone IS NULL;
```

---

### Students with a phone number

```sql
SELECT *
FROM students
WHERE phone IS NOT NULL;
```

---

## Why NOT '=' ?

Wrong

```sql
WHERE phone = NULL;
```

Wrong

```sql
WHERE phone != NULL;
```

Correct

```sql
WHERE phone IS NULL;
```

Correct

```sql
WHERE phone IS NOT NULL;
```

---

## Visual

| name | phone |
|------|------------|
| Akhil | 9876543210 |
| Charan | NULL |
| Om | NULL |

Query

```sql
SELECT *
FROM students
WHERE phone IS NULL;
```

Result

| name |
|------|
| Charan |
| Om |

---

## Best Practices

- Use `IS NULL` instead of `= NULL`.
- Use `IS NOT NULL` for existing values.
- Check nullable columns before updating data.
- NULL means "unknown", not zero or an empty string.

---

## Common Mistakes

❌

```sql
WHERE email = NULL;
```

✔

```sql
WHERE email IS NULL;
```

---

❌

```sql
WHERE phone != NULL;
```

✔

```sql
WHERE phone IS NOT NULL;
```

---

## Interview Questions

### What is NULL?

A missing or unknown value.

---

### Can NULL be compared using '='?

No.

Use `IS NULL`.

---

### Difference between NULL and 0?

NULL = Unknown value

0 = A valid numeric value

---

### Difference between NULL and ''?

NULL = Missing value

'' = Empty string

---

## Summary

- NULL represents missing data.
- Use `IS NULL` to find NULL values.
- Use `IS NOT NULL` to find non-NULL values.
- Never compare NULL using `=` or `!=`.