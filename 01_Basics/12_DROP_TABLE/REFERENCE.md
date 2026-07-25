# DROP TABLE

## Purpose

`DROP TABLE` is a DDL (Data Definition Language) command used to permanently remove a table from a database.

It removes both:
- Table structure
- All data stored in the table

---

## Syntax

```sql
DROP TABLE table_name;
```

Safer version:

```sql
DROP TABLE IF EXISTS table_name;
```

`IF EXISTS` prevents an error if the table does not exist.

---

## Basic Example

```sql
DROP TABLE courses;
```

This permanently removes the `courses` table and all its records.

---

## Using IF EXISTS

```sql
DROP TABLE IF EXISTS courses;
```

If `courses` exists, it is deleted.
If it does not exist, SQLite continues without an error.

---

## Visual

Before:

```text
Database
├── students
├── courses
└── teachers
```

```sql
DROP TABLE courses;
```

After:

```text
Database
├── students
└── teachers
```

The `courses` table and its data are gone.

---

## DROP TABLE vs DELETE

| DELETE | DROP TABLE |
|---|---|
| Removes rows | Removes the entire table |
| Table remains | Table is removed |
| Structure remains | Structure is removed |
| Can use WHERE | Cannot use WHERE |

Example:

```sql
DELETE FROM students;
```

Removes all rows, but `students` still exists.

```sql
DROP TABLE students;
```

Removes the entire `students` table.

---

## Best Practices

- Use `IF EXISTS` when appropriate.
- Check the table name before executing DROP.
- Back up important data before dropping tables.
- Never use DROP when you only want to remove records.
- Check dependencies such as foreign keys, views, or triggers.

---

## Common Mistakes

### Dropping the wrong table

```sql
DROP TABLE students;
```

This permanently removes the table.

Always verify first:

```sql
.tables
```

---

### Using WHERE with DROP

Wrong:

```sql
DROP TABLE students
WHERE id = 2;
```

Correct:

```sql
DELETE FROM students
WHERE id = 2;
```

`DROP TABLE` cannot remove individual rows.

---

### Dropping a table that doesn't exist

```sql
DROP TABLE courses;
```

This produces an error if `courses` doesn't exist.

Safer:

```sql
DROP TABLE IF EXISTS courses;
```

---

## Interview Questions

### What does DROP TABLE do?

It permanently removes a table, including its structure and data.

### Is DROP TABLE a DDL or DML command?

DDL (Data Definition Language).

### What is the difference between DELETE and DROP?

`DELETE` removes rows while keeping the table.
`DROP TABLE` removes the entire table.

### Why use IF EXISTS?

It prevents an error when the specified table does not exist.

### Can DROP TABLE use a WHERE clause?

No. `DROP TABLE` operates on the entire table.

---

## Summary

- `DROP TABLE` permanently removes a table.
- Both structure and data are removed.
- `IF EXISTS` can prevent errors.
- It cannot use `WHERE`.
- Use it carefully because the table is deleted completely.