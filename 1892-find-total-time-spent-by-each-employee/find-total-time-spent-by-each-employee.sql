# Write your MySQL query statement below
with cte as (
    select emp_id, event_day, (out_time - in_time) as daily_time
    from employees
)
select event_day as day, emp_id, sum(daily_time) as total_time
from cte
group by event_day, emp_id