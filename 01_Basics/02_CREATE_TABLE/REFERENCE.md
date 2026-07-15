# CREATE TABLE

## Purpose

`CREATE TABLE` is a DDL (Data Definition Language) command used to create a new table in a database.
A table stores data in rows and columns.

---

## Syntax

```sql
CREATE TABLE table_name (
    column_name DATA_TYPE CONSTRAINT,
    column_name DATA_TYPE CONSTRAINT
);
```

---

## Basic Example

```sql
CREATE TABLE students (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    age INTEGER,
    department TEXT
);
```

---

## Data Types

| Data Type | Description | Example |
|-----------|-------------|---------|
| INTEGER | Whole numbers | 20 |
| REAL | Decimal numbers | 9.5 |
| TEXT | Strings | "Akhil" |
| BLOB | Binary data | Image, PDF |
| NULL | Empty value | NULL |

---

## Common Constraints

| Constraint | Purpose |
|------------|---------|
| PRIMARY KEY | Unique identifier |
| AUTOINCREMENT | Automatically increases ID |
| NOT NULL | Cannot store NULL |
| UNIQUE | No duplicate values |
| DEFAULT | Assigns default value |
| CHECK | Validates data |

---

## Visual

```
students
+----+-------+-----+------------+
| id | name  | age | department |
+----+-------+-----+------------+
| 1  | Akhil | 20  | CSE AIML   |
| 2  | Charan | 21  | AIML      |
+----+-------+-----+------------+
```

---

## Best Practices

- Use meaningful table names.
- Always define a Primary Key.
- Choose appropriate data types.
- Use constraints whenever possible.
- Keep column names simple.

---

## Common Mistakes

❌ Missing comma

```sql
id INTEGER
name TEXT
```

✔ Correct

```sql
id INTEGER,
name TEXT
```

---

❌ Forgetting parentheses

```sql
CREATE TABLE students;
```

✔ Correct

```sql
CREATE TABLE students (
    id INTEGER
);
```

---

## Interview Questions

**1. What is CREATE TABLE?**

Creates a new table in a database.

**2. What is a Primary Key?**

A unique identifier for every row.

**3. Difference between PRIMARY KEY and UNIQUE?**

PRIMARY KEY uniquely identifies each row and cannot be NULL.

UNIQUE prevents duplicate values.

---

## Summary

- Creates a table.
- Defines columns.
- Defines data types.
- Applies constraints.
- Used before storing data.