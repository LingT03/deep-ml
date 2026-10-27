select department, name, salary, rnk
FROM (
    SELECT department, name, salary,
    DENSE_RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rnk
    FROM employees
) ranked
where rnk <= 3
