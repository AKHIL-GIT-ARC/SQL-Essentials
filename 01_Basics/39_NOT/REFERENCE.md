# NOT

## What is NOT?

`NOT` reverses a condition in SQL.

It selects rows where the specified condition is not true.

## Syntax

```sql
WHERE NOT condition
```

## Example

```sql
SELECT *
FROM students
WHERE NOT country = 'India';
```

This returns students whose country is not India.

## NOT with Comparison

```sql
SELECT *
FROM students
WHERE NOT age >= 20;
```

This returns students whose age is less than 20.

## NOT with AND

```sql
SELECT *
FROM students
WHERE NOT (age >= 20 AND cgpa >= 8);
```

This excludes students who satisfy both conditions.

## NOT with OR

```sql
SELECT *
FROM students
WHERE NOT (department = 'CSE' OR department = 'AIML');
```

This returns students who are not from CSE or AIML.

## NOT with IN

```sql
SELECT *
FROM students
WHERE department NOT IN ('CSE', 'AIML');
```

This excludes students from CSE and AIML.

## NOT with BETWEEN

```sql
SELECT *
FROM students
WHERE age NOT BETWEEN 18 AND 22;
```

This returns students outside the age range.

## Common Uses

- Exclude specific values
- Reverse conditions
- Filter unwanted records
- Combine with AND and OR