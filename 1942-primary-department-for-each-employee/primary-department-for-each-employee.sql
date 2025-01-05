# Write your MySQL query statement below
with one_dept_cte as (
    select employee_id, department_id
    from employee
    group by employee_id
    having count(1) = 1
)
select employee_id, department_id from employee where primary_flag  = 'Y'
union all 
select employee_id, department_id from one_dept_cte 
