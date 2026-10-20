-- Employees per department
SELECT department_id, COUNT(*) AS headcount
FROM employees
GROUP by department_id