# INSERT INTO

## Purpose
`INSERT INTO` is a DML (Data Manipulation Language) command used to add new records (rows) into a table.

---

## Syntax

### Insert Specific Columns

```sql
INSERT INTO table_name (column1, column2, column3)
VALUES (value1, value2, value3);
```

### Insert All Columns

```sql
INSERT INTO table_name
VALUES (value1, value2, value3, ...);
```

---

## Basic Example

```sql
INSERT INTO students (name, age, department)
VALUES ('Akhil', 20, 'CSE AIML');
```

---

## Insert Multiple Rows

```sql
INSERT INTO students (name, age, department)
VALUES
('Rahul', 21, 'IT'),
('Sneha', 19, 'CSE'),
('Priya', 22, 'ECE');
```

---

## Visual

Before

| id | name |
|----|------|
|    |      |

↓

After

| id | name |
|----|------|
|1|Akhil|
|2|Rahul|
|3|Sneha|

---

## Best Practices

- Specify column names.
- Insert data in the correct order.
- Use meaningful values.
- Let `AUTOINCREMENT` generate IDs.
- Verify inserted data using `SELECT`.

---

## Common Mistakes

❌ Missing quotes around text

```sql
VALUES (Akhil,20)
```

✔ Correct

```sql
VALUES ('Akhil',20)
```

---

❌ Wrong column order

```sql
(name, age)

VALUES (20,'Akhil')
```

✔ Correct

```sql
(name, age)

VALUES ('Akhil',20)
```

---

❌ Incorrect number of values

```sql
(name, age)

VALUES ('Akhil')
```
Every column must have a corresponding value.

---

## Interview Questions

**1. What is INSERT INTO?**

Adds new records to a table.

---

**2. Which SQL category does INSERT INTO belong to?**

DML (Data Manipulation Language).

---

**3. Why is specifying column names recommended?**

It makes queries easier to read and prevents errors if the table structure changes.

---

## Summary

- Adds new rows.
- Can insert one or multiple records.
- Always verify using `SELECT`.
- Prefer specifying column names.