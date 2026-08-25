# DATE & TIME

## What are Date and Time Functions?

SQLite provides functions for getting and manipulating dates and times.

The main functions are:

- `date()`
- `time()`
- `datetime()`
- `julianday()`
- `unixepoch()`

## Current Date

```sql
SELECT date('now');