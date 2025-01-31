```sql
SELECT * FROM employees WHERE department_id = 10 AND (salary > 100000 OR salary IS NULL);
```
This corrected query uses the `OR salary IS NULL` condition to explicitly include rows where the `salary` is `NULL`. This ensures that all employees in department 10, regardless of whether their salary is `NULL` or not, are included in the result set if they meet the department criteria.