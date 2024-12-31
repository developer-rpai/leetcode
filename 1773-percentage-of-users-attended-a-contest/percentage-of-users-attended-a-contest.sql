# Write your MySQL query statement below

select contest_id, round(percentage,2) as percentage from (

select r.contest_id, ((count(r.user_id)/ (select count(user_id) from users))*100)   as percentage 
from Register r
inner join users u
on r.user_id = u.user_id
group by r.contest_id
) a
order by percentage desc, contest_id
 