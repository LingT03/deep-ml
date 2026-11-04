select
a.user_id,
min(a.login_date) as first_login
from logins a
where a.user_id in (
    select a.user_id
    from logins a
    join logins b
        on a.user_id = b.user_id
    and b.login_date = a.login_date + 1 
)
group by a.user_id
order by a.user_id asc