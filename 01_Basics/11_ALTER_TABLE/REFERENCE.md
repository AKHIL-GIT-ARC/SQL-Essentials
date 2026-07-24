# ALTER TABLE

## Purpose

`ALTER TABLE` modifies the structure of an existing table.
It allows you to add columns, rename columns, or rename the table without deleting existing data.

---

## Syntax

### Add a New Column

```sql
ALTER TABLE table_name
ADD COLUMN column_name datatype;
```

### Rename a Column

```sql
ALTER TABLE table_name
RENAME COLUMN old_name TO new_name;
```

### Rename a Table

```sql
ALTER TABLE old_table_name
RENAME TO new_table_name;
```

---

## Basic Examples

### Add a Phone Column

```sql
ALTER TABLE students
ADD COLUMN phone TEXT;
```

---

### Rename a Column

```sql
ALTER TABLE students
RENAME COLUMN cgpa TO gpa;
```

---

### Rename the Table

```sql
ALTER TABLE students
RENAME TO university_students;
```

---

## What ALTER TABLE Can Do (SQLite)

| Operation | Supported |
|-----------|-----------|
| Add Column | ✅ Yes |
| Rename Column | ✅ Yes |
| Rename Table | ✅ Yes |
| Drop Column | ✅ Yes (SQLite 3.35+) |

---

## Visual

Before

| id | name | age |
|----|------|-----|
|1|Akhil|20|

Query

```sql
ALTER TABLE students
ADD COLUMN phone TEXT;
```

After

| id | name | age | phone |
|----|------|-----|-------|
|1|Akhil|20|NULL|

---

## Best Practices

- Backup important data before changing the table structure.
- Use meaningful column names.
- Verify changes using `.schema` or `PRAGMA table_info()`.
- Avoid unnecessary structural changes in production databases.

---

## Common Mistakes

❌ Forgetting the data type

```sql
ALTER TABLE students
ADD COLUMN phone;
```

✔ Correct

```sql
ALTER TABLE students
ADD COLUMN phone TEXT;
```

---

❌ Renaming a column that doesn't exist

```sql
ALTER TABLE students
RENAME COLUMN marks TO score;
```

---

## Interview Questions

### What is ALTER TABLE?

It modifies the structure of an existing table.

---

### Can ALTER TABLE delete data?

No.

It changes the table structure, not the stored records.

---

### Can ALTER TABLE add multiple columns in one statement?

No. SQLite allows only one column per `ADD COLUMN` statement.

---

## Summary

- Modifies table structure.
- Add new columns.
- Rename columns.
- Rename tables.
- Existing data remains unchanged.