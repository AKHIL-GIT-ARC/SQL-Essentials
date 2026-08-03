# CASE Statement

## Purpose

`CASE` is used to apply conditions and return different values.

It works like an **if-else** statement.

---

## Syntax

```sql
SELECT column,
CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    ELSE result3
END AS alias_name
FROM table_name;
```

---

## Example

```sql
SELECT
    name,
    cgpa,
    CASE
        WHEN cgpa >= 9 THEN 'Excellent'
        WHEN cgpa >= 8 THEN 'Good'
        ELSE 'Average'
    END AS performance
FROM students;
```

---

## Explanation

- SQL checks conditions from top to bottom.
- The first matching condition is returned.
- `ELSE` is optional but recommended.

---

## Best Practices

- Write conditions in the correct order.
- Always provide an `ELSE`.
- Use aliases for readable output.

---

## Common Mistakes

Wrong

```sql
CASE
    WHEN cgpa > 8 THEN 'Good'
    WHEN cgpa > 9 THEN 'Excellent'
END
```

Correct

```sql
CASE
    WHEN cgpa >= 9 THEN 'Excellent'
    WHEN cgpa >= 8 THEN 'Good'
    ELSE 'Average'
END
```

---

## Interview Questions

### What is CASE?

A conditional statement used to return different values based on conditions.

### Can CASE replace IF-ELSE?

Yes, in SQL.

### Does CASE stop after a match?

Yes. It returns the first matching condition.

---

## Summary

- Works like if-else.
- Conditions are checked from top to bottom.
- First matching condition is returned.
- Use `ELSE` for default values.