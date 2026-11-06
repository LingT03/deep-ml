-- 

with jan as (
select sum(amount) as daily_total
from orders
where order_date between '2024-01-01' and '2024-01-31'
group by customer_id, order_date
)
select max(daily_total) as max_daily_total
from jan