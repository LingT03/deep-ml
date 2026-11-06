-- your query
with top_workers as (
    SELECT
        w.name as name,
        w.salary as salary,
        t.title as job_title
    from workers w
    join titles t
    on w.title_id = t.title_id 
    WHERE w.salary = (SELECT MAX(salary) FROM workers)
    )
select
name, salary, job_title
from top_workers
order by name asc
