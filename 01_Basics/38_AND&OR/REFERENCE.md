# AND & OR

## What are AND and OR?

`AND` and `OR` are used to combine multiple conditions in SQL.

`AND` requires all conditions to be true.

`OR` requires at least one condition to be true.

## AND

```sql
SELECT *
FROM students
WHERE age >= 20
AND cgpa >= 8;
```

This returns students who are:

- 20 or older
- and have a CGPA of 8 or higher

Both conditions must be true.

## OR

```sql
SELECT *
FROM students
WHERE department = 'CSE'
OR department = 'AIML';
```

This returns students from either:

- CSE
- AIML

At least one condition must be true.

## AND with Multiple Conditions

```sql
SELECT *
FROM students
WHERE age >= 20
AND cgpa >= 8
AND country = 'India';
```

All three conditions must be true.

## OR with Multiple Conditions

```sql
SELECT *
FROM students
WHERE age < 20
OR cgpa >= 9;
```

A student is returned if either condition is true.

## Combining AND and OR

```sql
SELECT *
FROM students
WHERE (age >= 20 AND cgpa >= 8)
OR department = 'CSE';
```

Parentheses make the condition easier to understand and control.

## Common Uses

- Apply multiple filters
- Filter data using several conditions
- Combine different search criteria
- Create complex queries