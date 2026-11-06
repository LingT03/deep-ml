WITH top_workers AS (
    SELECT 
        w.name AS name,
        w.salary AS salary,
        t.title AS job_title
    FROM workers w
    JOIN titles t ON w.title_id = t.title_id
    WHERE w.salary = (SELECT MAX(salary) FROM workers)
)
SELECT name, salary, job_title 
FROM top_workers
ORDER BY name ASC;