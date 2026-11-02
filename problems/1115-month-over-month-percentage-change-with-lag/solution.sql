-- your query
with monthly_sales as (
    select date_trunc('month', sale_date) as month,
    sum(amount) as total,
    round((total - lag(total) over (order by month)) / (lag(total) over (order by month)) * 100, 2 ) as pct_change 
    from sales
    group by month
)
select
    month,
    total,
    pct_change
from monthly_sales