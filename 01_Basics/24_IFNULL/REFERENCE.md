# IFNULL

## What is IFNULL?

`IFNULL()` returns the second value if the first value is `NULL`.

If the first value is not `NULL`, it returns the first value.

## Syntax

```sql
IFNULL(value, replacement)
```

## Example

```sql
SELECT IFNULL(NULL, 'Not Available');
```

Result:

```text
Not Available
```

```sql
SELECT IFNULL('SQL', 'Not Available');
```

Result:

```text
SQL
```

## Practical Example

```sql
SELECT
    name,
    IFNULL(phone, 'No Phone') AS phone
FROM students;
```

If `phone` is NULL, "No Phone" is displayed.

## Common Uses

- Replace NULL values
- Display default text
- Improve reports and output