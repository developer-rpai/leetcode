# Write your MySQL query statement below
select e.employee_id from 
employees e
where ifnull(e.manager_id,0) not in (select m.employee_id from employees m)
and e.salary < 30000
and e.manager_id is not null
order by e.employee_id    
