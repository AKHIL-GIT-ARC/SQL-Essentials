# LIKE

## Purpose

`LIKE` is used with `WHERE` to search for a pattern inside text values.

It mainly uses two wildcard characters:

| Wildcard | Meaning | 
|---|---|
| `%` | Zero or more characters |
| `_` | Exactly one character |

---

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE column_name LIKE pattern;
```

---

## % Wildcard

### Starts With

Find names starting with `A`:

```sql
SELECT *
FROM students
WHERE name LIKE 'A%';
```

Matches:

```text
Akhil
Aman
Anjali
```

### Ends With

Find names ending with `a`:

```sql
SELECT *
FROM students
WHERE name LIKE '%a';
```

### Contains

Find names containing `ar`:

```sql
SELECT *
FROM students
WHERE name LIKE '%ar%';
```

---

## _ Wildcard

`_` represents exactly one character.

```sql
SELECT *
FROM students
WHERE name LIKE '_m';
```

Matches:

```text
Om
```

Another example:

```sql
WHERE name LIKE 'A____';
```

This matches five-character names starting with `A`.

---

## NOT LIKE

Returns values that do not match the pattern.

```sql
SELECT *
FROM students
WHERE name NOT LIKE 'A%';
```

---

## LIKE with Other Conditions

```sql
SELECT *
FROM students
WHERE name LIKE 'A%'
AND cgpa > 8.5;
```

---

## Case Sensitivity

For ASCII characters, SQLite `LIKE` is normally case-insensitive.

```sql
WHERE name LIKE 'a%'
```

can match:

```text
Akhil
```

Case-sensitivity behavior can differ for non-ASCII text.

---

## Visual

Data:

| name |
|---|
| Akhil |
| Rahul |
| Anjali |
| Priya |

Query:

```sql
SELECT name
FROM students
WHERE name LIKE 'A%';
```

Result:

| name |
|---|
| Akhil |
| Anjali |

---

## Best Practices

- Use `%` for any number of characters.
- Use `_` for exactly one character.
- Use `NOT LIKE` to exclude patterns.
- Combine `LIKE` with `WHERE` conditions when needed.
- Avoid unnecessary leading `%` on large indexed datasets because it can make searches less efficient.

---

## Common Mistakes

### Forgetting quotes

Wrong:

```sql
WHERE name LIKE A%;
```

Correct:

```sql
WHERE name LIKE 'A%';
```

### Confusing % and _

```text
% → zero or more characters
_ → exactly one character
```

---

## Interview Questions

### What does LIKE do?

It searches text values using a pattern.

### What does % mean?

Zero or more characters.

### What does _ mean?

Exactly one character.

### What is NOT LIKE?

It returns values that do not match a pattern.

### Can LIKE be used with WHERE?

Yes. `LIKE` is typically used as a condition inside `WHERE`.

---

## Summary

- `LIKE` searches text patterns.
- `%` matches zero or more characters.
- `_` matches exactly one character.
- `NOT LIKE` excludes matching patterns.
- Commonly used with `WHERE`.