# UPPER & LOWER

## What are UPPER() and LOWER()?

`UPPER()` converts text to uppercase.

`LOWER()` converts text to lowercase.

## Syntax

```sql
UPPER(value)
LOWER(value)
```

## Example

```sql
SELECT UPPER('hello');
```

Result:

```text
HELLO
```

```sql
SELECT LOWER('SQL HANDBOOK');
```

Result:

```text
sql handbook
```

## Practical Example

```sql
SELECT
    name,
    UPPER(name) AS uppercase_name
FROM students;
```

This displays each student's name in uppercase.

```sql
SELECT
    name,
    LOWER(name) AS lowercase_name
FROM students;
```

This displays each student's name in lowercase.

## Using UPPER() with Department

```sql
SELECT
    department,
    UPPER(department) AS department_name
FROM students;
```

## Using LOWER() with Email

```sql
SELECT
    name,
    LOWER(email) AS email
FROM students;
```

## Common Uses

- Convert text to uppercase
- Convert text to lowercase
- Standardize text data
- Clean inconsistent text
- Format names and emails