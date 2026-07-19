# ORDER BY

## Purpose

`ORDER BY` sorts the query result.
By default, SQL sorts in ascending order.

---

## Syntax

```sql
SELECT column_name
FROM table_name
ORDER BY column_name;
```

---

## Ascending Order

```sql
SELECT *
FROM students
ORDER BY age;
```

or

```sql
SELECT *
FROM students
ORDER BY age ASC;
```

Smallest → Largest

A → Z

---

## Descending Order

```sql
SELECT *
FROM students
ORDER BY cgpa DESC;
```

Largest → Smallest

Z → A

---

## Sort by Multiple Columns

```sql
SELECT *
FROM students
ORDER BY department ASC, cgpa DESC;
```
SQL first sorts by department.
If departments are the same, it sorts by CGPA.

---

## Examples

Sort by name

```sql
SELECT *
FROM students
ORDER BY name;
```

Sort by CGPA

```sql
SELECT *
FROM students
ORDER BY cgpa DESC;
```

Sort by age

```sql
SELECT *
FROM students
ORDER BY age ASC;
```

---

## Keywords

| Keyword | Meaning |
|---------|---------|
| ASC | Ascending |
| DESC | Descending |

---

## Best Practices

- Use ORDER BY when displaying data.
- Sort numbers, dates, or text as needed.
- Use DESC for highest values first.
- Combine with WHERE for better results.

---

## Common Mistakes

❌

```sql
ORDER age;
```

✔

```sql
ORDER BY age;
```

---

❌

```sql
ORDER BY DESC age;
```

✔

```sql
ORDER BY age DESC;
```

---

## Interview Questions

### What is ORDER BY?
It sorts query results.
---

### What is the default order?
Ascending (ASC).
---

### Can ORDER BY sort multiple columns?
Yes.
Example:

```sql
ORDER BY department, age;
```
---

## Summary
- Sorts query results.
- Default is ASC.
- DESC sorts in reverse order.
- Multiple columns can be sorted together.