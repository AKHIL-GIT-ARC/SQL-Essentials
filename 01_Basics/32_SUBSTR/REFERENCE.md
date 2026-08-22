# SUBSTR

## What is SUBSTR?

`SUBSTR()` extracts a portion of a text value.

It is also called `SUBSTRING()` in some SQL databases, but SQLite uses `SUBSTR()`.

## Syntax

```sql
SUBSTR(value, start, length)
```

`start` specifies where extraction begins.

`length` specifies how many characters to extract.

## Example

```sql
SELECT SUBSTR('SQL Handbook', 1, 3);
```

Result:

```text
SQL
```

## Starting Position

SQLite uses `1` as the first character.

```sql
SELECT SUBSTR('SQLite', 1, 3);
```

Result:

```text
SQL
```

```sql
SELECT SUBSTR('SQLite', 4, 3);
```

Result:

```text
ite
```

## Practical Example

```sql
SELECT
    name,
    SUBSTR(name, 1, 3) AS short_name
FROM students;
```

This extracts the first three characters of each student's name.

## Extract Without Length

The length can be omitted.

```sql
SELECT SUBSTR('SQL Handbook', 5);
```

Result:

```text
Handbook
```

It returns everything from the specified position to the end.

## Negative Starting Position

A negative starting position counts from the end.

```sql
SELECT SUBSTR('SQLite', -3);
```

Result:

```text
ite
```

## Common Uses

- Extract part of a name
- Extract part of an email
- Extract prefixes or suffixes
- Extract codes from text
- Process text data