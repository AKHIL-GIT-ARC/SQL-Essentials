# COALESCE

## What is COALESCE?

`COALESCE()` returns the first non-NULL value from the given list.

## Syntax

```sql
COALESCE(column_name, value)
```

## Example

```sql
SELECT
    name,
    COALESCE(phone, 'Not Available') AS phone
FROM students;
```

If `phone` is NULL, it displays **Not Available**.

## Multiple Values

```sql
SELECT
    COALESCE(phone, email, 'No Contact')
FROM students;
```

Returns:
- phone (if available)
- otherwise email
- otherwise "No Contact"

## Common Uses

- Replace NULL values
- Show default text
- Improve report readability