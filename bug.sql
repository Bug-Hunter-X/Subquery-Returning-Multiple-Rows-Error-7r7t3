```sql
SELECT * FROM employees WHERE department_id = (SELECT id FROM departments WHERE name = 'Sales');
```
This query might fail if the subquery returns multiple `id` values. If the 'Sales' department has multiple entries with the same name but different IDs, the subquery would return more than one result, leading to a database error.  Many SQL dialects would then fail with a "subquery returned more than one row" error.