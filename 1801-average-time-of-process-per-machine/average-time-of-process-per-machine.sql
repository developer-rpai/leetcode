# Write your MySQL query statement below
with start_time_cte as (
        select machine_id, process_id, timestamp as start_time
        from activity 
        where activity_type = 'start'
),
end_time_cte as (
        select machine_id, process_id, timestamp as end_time
        from activity 
        where activity_type = 'end'
)
select machine_id , round(avg(total_time),3) processing_time
from (
select s.machine_id, s.process_id, (end_time - start_time) as total_time from start_time_cte s
    inner join end_time_cte e
        on s.machine_id = e.machine_id
        and s.process_id = e.process_id
) c
group by machine_id
order by processing_time desc
 
