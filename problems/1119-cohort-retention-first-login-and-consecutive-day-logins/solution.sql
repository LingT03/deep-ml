-- your query
with sticky_users as (
    select
        user_id,
        login_date,
        min(login_date) over (partition by user_id) as first_login,
        lead(login_date, 1) over (partition by user_id order by login_date) as repeat_login
    from logins
)
select
distinct user_id,
first_login
from sticky_users
where repeat_login = login_date + 1 
order by user_id asc 
