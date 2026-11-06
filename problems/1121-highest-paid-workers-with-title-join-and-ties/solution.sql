-- your query
with top_workers as (
    SELECT
        w.name as name,
        w.salary as salary,
        t.title as job_title,
    dense_rank() over (order by w.salary desc) as rnk
    from workers w
    join titles t
    on w.title_id = t.title_id 
    )
select
name, salary, job_title
from top_workers
where rnk = 1
order by name asc
