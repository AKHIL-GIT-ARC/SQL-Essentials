# DELETE

## Purpose

`DELETE` removes one or more rows from a table.
It deletes only the records that satisfy the specified condition.

---

## Syntax

```sql
DELETE FROM table_name
WHERE condition;
```

---

## Basic Examples

### Delete one student

```sql
DELETE FROM students
WHERE id = 3;
```

---

### Delete by name

```sql
DELETE FROM students
WHERE name = 'Rahul';
```

---

### Delete all students

```sql
DELETE FROM students;
```

⚠️ This removes **every row** in the table.

The table itself still exists.

---

## Visual

Before

| id | name | department |
|----|------|------------|
|1|Akhil|CSE AIML|
|2|Kiran|IT|
|3|Deepika|ECE|

Query

```sql
DELETE FROM students
WHERE id = 2;
```

After

| id | name | department |
|----|------|------------|
|1|Akhil|CSE AIML|
|3|Deepika|ECE|

---

## DELETE vs DROP

DELETE
- Removes rows
- Table remains
- Structure remains

DROP
- Removes the entire table
- Structure is deleted
- Data is deleted

---

## Best Practices

- Always use a `WHERE` clause unless you want to remove every row.
- Run a `SELECT` query first to verify which rows will be deleted.
- Use the primary key (`id`) whenever possible.
- Consider backing up important data before deleting.

---

## Common Mistakes

❌ Deletes every row

```sql
DELETE FROM students;
```

✔ Delete only one row

```sql
DELETE FROM students
WHERE id = 1;
```

---

❌ Wrong column

```sql
DELETE FROM students
WHERE ids = 1;
```

✔

```sql
DELETE FROM students
WHERE id = 1;
```

---

## Interview Questions

### What does DELETE do?

Deletes rows from a table.

---

### Does DELETE remove the table?

No.

Only the data is removed.

---

### Why is WHERE important?

Without `WHERE`, every row in the table is deleted.

---

### Difference between DELETE and DROP?

DELETE removes rows.
DROP removes the entire table.

---

## Summary

- Removes rows.
- Table remains.
- WHERE specifies which rows to remove.
- Without WHERE, every row is deleted.