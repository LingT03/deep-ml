select recorded_on
from (
select
recorded_on,
temperature,
lag(temperature) over (order by recorded_on) as prev_temperature
from weather 
)
where temperature > prev_temperature
order by recorded_on;