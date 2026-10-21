-- your query
SELECT DISTINCT salary
FROM employee
GROUP BY salary
ORDER BY salary DESC 
LIMIT 1 OFFSET 2;