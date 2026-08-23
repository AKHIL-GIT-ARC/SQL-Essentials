# INSTR

## What is INSTR?

`INSTR()` returns the position of the first occurrence of a specified substring inside a string.

If the substring is not found, it returns `0`.

## Syntax

```sql
INSTR(string, substring)
```

## Example

```sql
SELECT INSTR('SQL Handbook', 'Handbook');
```

Result:

```text
5
```

`Handbook` starts at the 5th character.

## Character Position

```sql
SELECT INSTR('SQLite', 'L');
```

Result:

```text
2
```

```sql
SELECT INSTR('SQLite', 't');
```

Result:

```text
5
```

## When Text Is Not Found

```sql
SELECT INSTR('SQLite', 'Python');
```

Result:

```text
0
```

`0` means the substring was not found.

## Practical Example

```sql
SELECT
    email,
    INSTR(email, '@') AS at_position
FROM students;
```

This finds the position of `@` in each email address.

## Using INSTR with SUBSTR

`INSTR()` and `SUBSTR()` can be combined to extract text.

```sql
SELECT
    email,
    SUBSTR(email, INSTR(email, '@') + 1) AS domain
FROM students;
```

This extracts everything after `@`.

For example:

```text
akhil@gmail.com
```

becomes:

```text
gmail.com
```

## Common Uses

- Find the position of text
- Find special characters
- Find the `@` in email addresses
- Extract text using `SUBSTR()`
- Check whether a substring exists