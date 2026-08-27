# NULL HANDLING REVISION

## What is NULL?

`NULL` represents a missing or unknown value.

It is not the same as:

- `0`
- `''` (empty string)
- `'NULL'` (text)

## IS NULL

Use `IS NULL` to find missing values.

```sql
SELECT *
FROM students
WHERE phone IS NULL;
```

## IS NOT NULL

Use `IS NOT NULL` to find values that exist.

```sql
SELECT *
FROM students
WHERE phone IS NOT NULL;
```

## COALESCE()

`COALESCE()` returns the first non-NULL value.

```sql
SELECT
    name,
    COALESCE(phone, 'No Phone') AS phone
FROM students;
```

You can provide multiple fallback values.

```sql
SELECT
    name,
    COALESCE(phone, email, 'No Contact') AS contact
FROM students;
```

## IFNULL()

`IFNULL()` replaces a NULL value with a specified value.

```sql
SELECT
    name,
    IFNULL(phone, 'No Phone') AS phone
FROM students;
```

`IFNULL()` accepts only two arguments.

## NULLIF()

`NULLIF()` returns NULL when two values are equal.

```sql
SELECT NULLIF(10, 10);
```

Result:

```text
NULL
```

If the values are different:

```sql
SELECT NULLIF(10, 5);
```

Result:

```text
10
```

## COALESCE vs IFNULL

```text
COALESCE() → supports multiple values
IFNULL()   → supports two values
```

Example:

```sql
COALESCE(phone, email, 'No Contact')
```

```sql
IFNULL(phone, 'No Phone')
```

## NULLIF vs IFNULL

They work in opposite directions.

```text
IFNULL()
NULL → replacement value
```

```text
NULLIF()
equal values → NULL
```

## Common Uses

- Find missing data
- Replace NULL values
- Provide fallback values
- Clean data
- Prevent unwanted calculations
- Handle missing values in reports