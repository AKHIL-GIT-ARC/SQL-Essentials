# UPDATE

## Purpose

`UPDATE` modifies existing records in a table.
It changes the values of one or more columns for rows that match a specified condition.

---

## Syntax

```sql
UPDATE table_name
SET column_name = value
WHERE condition;
```

---

## Basic Examples

### Update one column

```sql
UPDATE students
SET cgpa = 9.20
WHERE name = 'Akhil';
```

---

### Update multiple columns

```sql
UPDATE students
SET
    age = 21,
    department = 'AI & ML'
WHERE id = 1;
```

---

### Update all rows

```sql
UPDATE students
SET country = 'India';
```

⚠️ This updates every row because there is no `WHERE` clause.

---

## Visual

Before

| id | name | cgpa |
|----|------|------|
|1|Akhil|8.90|

Query

```sql
UPDATE students
SET cgpa = 9.20
WHERE id = 1;
```

After

| id | name | cgpa |
|----|------|------|
|1|Akhil|9.20|

---

## Best Practices

- Always use a `WHERE` clause unless you intend to update every row.
- Verify the rows with a `SELECT` query before updating.
- Update only the required columns.
- Use the primary key (`id`) whenever possible.

---

## Common Mistakes

❌ Updating all rows accidentally

```sql
UPDATE students
SET cgpa = 10;
```

✔ Correct

```sql
UPDATE students
SET cgpa = 10
WHERE id = 1;
```

---

❌ Misspelled column name

```sql
UPDATE students
SET cgp = 9.2;
```

✔ Correct

```sql
UPDATE students
SET cgpa = 9.2;
```

---

## Interview Questions

### What does UPDATE do?

It modifies existing records in a table.

---

### Why is WHERE important in UPDATE?

Without `WHERE`, every row in the table is updated.

---

### Can UPDATE modify multiple columns?

Yes.

```sql
UPDATE students
SET age = 22,
    cgpa = 9.30
WHERE id = 2;
```

---

## Summary

- Modifies existing records.
- Can update one or multiple columns.
- Always use `WHERE` when updating specific rows.
- One of the most commonly used SQL commands.