-- your query rows order_id, customer_id, date, amount
-- customers can place more than on eorder on the same day
-- every customer & day the total = sum(of all amounts the customer spent on that day)
-- only consider only from january 
-- return a col max_daily_total -- largest total dialy cost across all customer and days in that rnage

select max(daily_total) as max_daily_total
from 
(select sum(amount) as daily_total
from orders
where order_date between '2024-01-01' and '2024-01-31'
group by customer_id, order_date)