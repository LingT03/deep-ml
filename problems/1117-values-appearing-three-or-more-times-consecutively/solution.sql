-- your query
with nums as (
    select num,
    lead(num, 1) over (order by id) as next_num,    
    lead(num, 2) over (order by id) as next_next_num
    from logs
) 
SELECT
distinct num,
from nums
where num = next_num and num = next_next_num