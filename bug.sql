```sql
SELECT * FROM employees WHERE department_id = 10 AND salary > 100000;
```
This query might seem correct but it can cause unexpected behavior if the `salary` column is nullable.  If an employee in department 10 has a NULL salary, this row will be excluded from the results even though it meets the department criteria. This is because `NULL` is not considered greater than any number.  The unexpected behavior is that a valid employee record (the one with the NULL salary) is silently omitted.