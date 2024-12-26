```sql
SELECT * FROM employees WHERE department_id IN (SELECT id FROM departments WHERE name = 'Sales');
--Alternative solution using MIN aggregation function:
--SELECT * FROM employees WHERE department_id = (SELECT MIN(id) FROM departments WHERE name = 'Sales');
```