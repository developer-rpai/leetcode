# Write your MySQL query statement below
SELECT distinct class
from courses
group by class
having count(1) >= 5
