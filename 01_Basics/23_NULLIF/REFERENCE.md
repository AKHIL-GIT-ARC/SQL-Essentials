# NULLIF

## What is NULLIF?

`NULLIF()` compares two values.

- If both values are equal → returns `NULL`
- Otherwise → returns the first value

## Syntax

```sql
NULLIF(value1, value2)
```

## Example

```sql
SELECT NULLIF(10, 10);
```

Result:

```text
NULL
```

```sql
SELECT NULLIF(10, 5);
```

Result:

```text
10
```

## Practical Example

```sql
SELECT
    name,
    NULLIF(age, 20) AS age
FROM students;
```

Students whose age is **20** will show `NULL`.

## Common Uses

- Convert specific values into NULL
- Prevent divide-by-zero errors
- Clean data before calculations