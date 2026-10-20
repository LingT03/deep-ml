-- Top 3 earners
SELECT name, salary
FROM employees
ORDER BY salary desc 
LIMIT 3 