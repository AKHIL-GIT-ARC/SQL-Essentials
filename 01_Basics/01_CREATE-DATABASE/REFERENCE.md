# CREATE DATABASE

## Overview

`CREATE DATABASE` is a Data Definition Language (DDL) command used to create a new database. A database acts as a container that stores related tables, views, indexes, triggers, and other database objects.

Once created, the database becomes the foundation for storing and managing application data.

---

## Category

**DDL (Data Definition Language)**

DDL commands define or modify the structure of database objects.

Other DDL commands include:

- CREATE TABLE
- ALTER
- DROP
- TRUNCATE
- RENAME

---

## Purpose

The `CREATE DATABASE` command is used to:

- Create a new database.
- Organize application data separately.
- Isolate projects or applications.
- Prepare storage before creating tables.

---

## Syntax

```sql
CREATE DATABASE database_name;
```

---

## Syntax Breakdown

| Keyword | Description |
|----------|-------------|
| `CREATE` | Creates a new database object. |
| `DATABASE` | Specifies that the object being created is a database. |
| `database_name` | Name of the database to create. |

---

## Naming Rules

A database name should:

- Be meaningful.
- Be unique on the database server.
- Start with a letter (recommended).
- Avoid spaces.
- Avoid special characters.
- Follow a consistent naming convention.

### Good Examples

```text
student_db
company
inventory_system
hospital_management
```

### Poor Examples

```text
123database
my database
company!
```

---

## Examples

### Example 1

```sql
CREATE DATABASE company;
```

Creates a database named **company**.

---

### Example 2

```sql
CREATE DATABASE student_management;
```

Creates a database named **student_management**.

---

## Best Practices

- Use descriptive database names.
- Prefer lowercase with underscores.
- Create one database per application whenever appropriate.
- Plan the database structure before creating tables.

---

## Common Mistakes

❌ Using spaces in database names.

```sql
CREATE DATABASE Student Database;
```

---

❌ Creating databases with meaningless names.

```sql
CREATE DATABASE test1;
```

---

❌ Assuming a database automatically contains tables.

A new database is empty until tables are created.

---

## SQLite Notes

SQLite does **not** support the `CREATE DATABASE` SQL statement.

A SQLite database is simply a file.

Example:

```bash
sqlite3 company.db
```

If `company.db` does not exist, SQLite creates it automatically.

---

## Real-World Use Cases

- Student Management System
- Library Management System
- Hospital Management System
- Banking System
- E-Commerce Platform

Each application usually stores its data in its own database.

---

## Interview Questions

### What is CREATE DATABASE?

It is a DDL command used to create a new database.

---

### Is CREATE DATABASE supported in SQLite?

No.

SQLite creates a database automatically when a new `.db` file is opened.

---

### Can a database exist without tables?

Yes.

A newly created database is empty until tables are added.

---

## Summary

- `CREATE DATABASE` creates a new database.
- It belongs to DDL.
- A database stores tables and other database objects.
- SQLite creates databases as `.db` files instead of using the `CREATE DATABASE` statement.