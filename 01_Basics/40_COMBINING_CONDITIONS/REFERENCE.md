# COMBINING CONDITIONS

## What are Combined Conditions?

Combined conditions use multiple operators together to create more specific filters.
Common operators include:
- `AND`
- `OR`
- `NOT`
- `IN`
- `BETWEEN`
Parentheses `()` are used to control the order of conditions.

## AND with OR

```sql
SELECT *
FROM students
WHERE age >= 20
AND (cgpa >= 8 OR department = 'CSE');
```

The student must be 20 or older and must also satisfy at least one condition inside the parentheses.

## OR with AND

```sql
SELECT *
FROM students
WHERE (department = 'CSE' AND cgpa >= 8)
OR (department = 'AIML' AND cgpa >= 8.5);
```

Each group of conditions is evaluated separately.

## Using IN with AND

```sql
SELECT *
FROM students
WHERE department IN ('CSE', 'AIML')
AND cgpa >= 8;
```

This returns students from CSE or AIML with a CGPA of 8 or higher.

## Using BETWEEN with AND

```sql
SELECT *
FROM students
WHERE age BETWEEN 18 AND 22
AND cgpa >= 8;
```

This returns students between 18 and 22 years old with a CGPA of 8 or higher.

## Using NOT with Multiple Conditions

```sql
SELECT *
FROM students
WHERE NOT (
    department = 'CSE'
    AND cgpa >= 9
);
```

This excludes students who are from CSE and have a CGPA of 9 or higher.

## Complex Condition

```sql
SELECT *
FROM students
WHERE age BETWEEN 18 AND 22
AND department IN ('CSE', 'AIML')
AND (cgpa >= 8 OR country = 'India');
```

All main conditions must be true.

Inside the parentheses, at least one condition must be true.

## Why Use Parentheses?

Parentheses make complex conditions easier to understand.

```sql
WHERE A AND (B OR C)
```

This is different from:

```sql
WHERE (A AND B) OR C
```

Always use parentheses when combining `AND` and `OR` if the intended logic could be unclear.

## Common Uses

- Create advanced filters
- Combine multiple requirements
- Filter using groups of conditions
- Exclude specific records
- Write complex WHERE clauses