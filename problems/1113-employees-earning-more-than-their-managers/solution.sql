-- your query
SELECT e.name 
FROM employees e 
JOIN employees m on e.manager_id = m.id
WHERE e.salary > m.salary