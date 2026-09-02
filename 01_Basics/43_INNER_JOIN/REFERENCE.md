# INNER JOIN

## What is INNER JOIN?

`INNER JOIN` combines rows from two tables when their related columns have matching values.

Only matching rows from both tables are returned.

## Syntax

```sql
SELECT columns
FROM table1
INNER JOIN table2
ON table1.column = table2.column;