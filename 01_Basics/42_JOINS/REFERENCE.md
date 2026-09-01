# JOINS INTRODUCTION

## What is a JOIN?

A `JOIN` is used to combine rows from two or more tables.

Tables are usually connected using related columns.

## Why Do We Need JOINs?

Real databases usually store different types of data in separate tables.

For example:

```text
students table
```

| id | name | department_id |
|---|---|---|
| 1 | Akhil | 1 |
| 2 | Rahul | 2 |

```text
departments table
```

| id | department_name |
|---|---|
| 1 | CSE |
| 2 | AIML |

Both tables are connected using:

```text
students.department_id
        ↓
departments.id
```

## Basic JOIN Syntax

```sql
SELECT columns
FROM table1
JOIN table2
ON table1.column = table2.column;
```

The `ON` condition specifies how the tables are related.

## Example

```sql
SELECT
    students.name,
    departments.department_name
FROM students
JOIN departments
ON students.department_id = departments.id;
```

This combines student information with department information.

## How JOIN Works

```text
students
    │
    │ department_id = id
    ↓
departments

        ↓

Combined Result
```

## Table Aliases

Table aliases can make JOIN queries shorter and easier to read.

```sql
SELECT
    s.name,
    d.department_name
FROM students AS s
JOIN departments AS d
ON s.department_id = d.id;
```

Here:

```text
s → students
d → departments
```

## Important

A JOIN does not create a new table.

It only combines data in the query result.

## Types of JOINs

The main JOIN types are:

- `INNER JOIN`
- `LEFT JOIN`
- `CROSS JOIN`
- `SELF JOIN`

We will learn each of these separately.

## Common Uses

- Combine related tables
- Retrieve data from multiple tables
- Connect students with departments
- Connect orders with customers
- Connect products with categories
- Work with relational databases