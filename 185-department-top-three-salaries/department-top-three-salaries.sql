# Write your MySQL query statement below

select 
    Department
    ,Employee
    ,salary
 from (   
            SELECT 
                d.name as Department
                ,e.name as Employee 
                ,e.salary
                ,dense_rank() over (partition by d.name order by e.salary desc) salary_rank
            FROM Employee e
            INNER JOIN Department d
                on e.departmentID = d.id
            group by d.name,e.name
    ) x
    where salary_rank <= 3
