-- your query
with df as (
    select
    recorded_on,
    temperature,
    lag(temperature) over (order by recorded_on) as prev_temp
    from weather
)
select recorded_on
from df 
where temperature > prev_temp
order by recorded_on asc 