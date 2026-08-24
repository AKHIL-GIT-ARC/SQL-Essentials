# CONCATENATION

## What is Concatenation?

Concatenation means joining two or more text values together.

SQLite uses the `||` operator for string concatenation.

## Syntax

```sql
value1 || value2
```

## Example

```sql
SELECT 'SQL' || 'Handbook';
```

Result:

```text
SQLHandbook
```

To add a space:

```sql
SELECT 'SQL' || ' ' || 'Handbook';
```

Result:

```text
SQL Handbook
```

## Practical Example

```sql
SELECT
    name || ' - ' || department AS student_info
FROM students;
```

Example result:

```text
Akhil - CSE AIML
```

## Combining Multiple Columns

```sql
SELECT
    name || ' (' || department || ')' AS student_details
FROM students;
```

Example result:

```text
Akhil (CSE AIML)
```

## Concatenating Text and Numbers

SQLite can convert values when concatenating them.

```sql
SELECT
    name || ' is ' || age || ' years old' AS student_info
FROM students;
```

## Concatenating with NULL

If one of the operands is `NULL`, the result of `||` is normally `NULL`.

```sql
SELECT 'SQL' || NULL;
```

Result:

```text
NULL
```

Use `COALESCE()` or `IFNULL()` when a NULL value should be replaced.

```sql
SELECT
    name || ' - ' || COALESCE(present_city, 'Unknown') AS student_info
FROM students;
```

## Common Uses

- Combine first and last names
- Create display strings
- Combine multiple columns
- Build labels
- Format text for reports