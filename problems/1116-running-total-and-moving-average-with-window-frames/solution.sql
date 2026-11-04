select
    day,
    amount,
    sum(amount) over (order by day asc rows between unbounded preceding and current row) as running_total,
    avg(amount) over (order by day asc rows between 2 preceding and current row) as moving_avg
from sales
order by day asc;