-- your query
with df as (
SELECT 
    day, amount,
    sum(amount) OVER (ORDER BY day ASC ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as running_total,
    avg(amount) OVER (ORDER BY day ASC ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) as moving_avg
from sales
)
SELECT
    day,
    amount,
    running_total,
    moving_avg
from df
order by day asc
