# WHERE

## Purpose

`WHERE` is used to filter records based on a condition.
Only rows that satisfy the condition are returned.

---

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE condition;
```

---

## Basic Examples

### Show all students aged 20

```sql
SELECT *
FROM students
WHERE age = 20;
```

### Show only names

```sql
SELECT name
FROM students
WHERE department = 'CSE AIML';
```

### Show students with CGPA greater than 8.5

```sql
SELECT *
FROM students
WHERE cgpa > 8.5;
```

---

## Comparison Operators

| Operator | Meaning |
|----------|---------|
| = | Equal to |
| != | Not equal to |
| > | Greater than |
| < | Less than |
| >= | Greater than or equal to |
| <= | Less than or equal to |

---

## Logical Operators

| Operator | Purpose |
|----------|---------|
| AND | Both conditions must be true |
| OR | Any one condition must be true |
| NOT | Reverses a condition |

---

## Visual

Table

| id | name | age |
|----|------|-----|
|1|Akhil|20|
|2|Charan|19|
|3|Om|19|

Query

```sql
SELECT *
FROM students
WHERE age = 20;
```

Result

| id | name | age |
|----|------|-----|
|1|Akhil|20|

---

## Best Practices

- Filter only the required data.
- Use meaningful conditions.
- Put text values inside single quotes.
- Keep conditions simple and readable.

---

## Common Mistakes

❌ Missing quotes

```sql
WHERE name = Akhil;
```

✔ Correct

```sql
WHERE name = 'Akhil';
```

---

❌ Using ==

```sql
WHERE age == 20;
```

Use

```sql
WHERE age = 20;
```

---

❌ Misspelled column name

```sql
WHERE ages = 20;
```

---

## Interview Questions

**1. What is WHERE?**

Filters records based on a condition.

---

**2. Can WHERE be used without SELECT?**

No.

---

**3. Difference between WHERE and HAVING?**

WHERE filters rows before grouping.
HAVING filters groups after grouping.

---

## Summary

- Filters records.
- Uses comparison operators.
- Supports logical operators.
- One of the most frequently used SQL clauses.