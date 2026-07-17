# SELECT

## Purpose

`SELECT` is a DQL (Data Query Language) command used to retrieve data from one or more tables.

---

## Syntax

### Select All Columns

```sql
SELECT * FROM table_name;
```

### Select Specific Columns

```sql
SELECT column1, column2
FROM table_name;
```

---

## Basic Examples

### Select all records

```sql
SELECT * FROM students;
```

### Select specific columns

```sql
SELECT name, age
FROM students;
```

### Using Alias

```sql
SELECT
    name AS Student_Name,
    cgpa AS GPA
FROM students;
```

### Selecting Constant Values

```sql
SELECT 'Welcome to SQL';
```

### Performing Calculations

```sql
SELECT 10 + 20;
```

---

## Visual

Table

| id | name | age | department |
|----|------|-----|------------|
|1|Akhil|20|CSE AIML|
|2|Vinay|21|IT|

Query

```sql
SELECT name, age
FROM students;
```

Result

| name | age |
|------|-----|
|Akhil|20|
|Rahul|21|

---

## Best Practices

- Select only the required columns.
- Use aliases for better readability.
- Avoid `SELECT *` in production applications.
- Format queries neatly.

---

## Common Mistakes

❌ Missing FROM

```sql
SELECT name;
```

✔ Correct

```sql
SELECT name
FROM students;
```

---

❌ Wrong table name

```sql
SELECT *
FROM student;
```

✔ Correct

```sql
SELECT *
FROM students;
```

---

❌ Misspelled column name

```sql
SELECT names
FROM students;
```

---

## Interview Questions

**1. What is SELECT?**

Retrieves data from a table.

---

**2. Which SQL category does SELECT belong to?**

DQL (Data Query Language).

---

**3. Difference between `SELECT *` and selecting specific columns?**

`SELECT *` returns all columns.
Selecting specific columns returns only the required columns.

---

## Summary
- Retrieves data.
- Can return all or selected columns.
- Supports aliases.
- Can perform calculations.
- Most frequently used SQL command.