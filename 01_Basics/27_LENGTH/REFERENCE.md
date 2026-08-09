# LENGTH

## What is LENGTH?

`LENGTH()` returns the number of characters in a text value.

## Syntax

```sql
LENGTH(value)
```

## Example

```sql
SELECT LENGTH('SQLite');
```

Result:

```text
6
```

## Practical Example

```sql
SELECT
    name,
    LENGTH(name) AS name_length
FROM students;
```

This returns each student's name along with the number of characters in the name.

## Using LENGTH with WHERE

```sql
SELECT
    name,
    LENGTH(name) AS name_length
FROM students
WHERE LENGTH(name) > 5;
```

This returns students whose names contain more than 5 characters.

## Using LENGTH with ORDER BY

```sql
SELECT
    name,
    LENGTH(name) AS name_length
FROM students
ORDER BY name_length DESC;
```

This sorts students by name length from longest to shortest.

## LENGTH with NULL

```sql
SELECT LENGTH(NULL);
```

Result:

```text
NULL
```

`LENGTH(NULL)` returns `NULL`, not `0`.

## Common Uses

- Find the length of text
- Check name length
- Validate text length
- Filter records based on text length
- Sort records by text length