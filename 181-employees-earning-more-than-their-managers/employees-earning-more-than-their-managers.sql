# Write your MySQL query statement below
-- Write a solution to find the employees who earn more than their managers.
-- Return the result table in any order.
-- SELF JOIN with Employee on id and managerid
-- Fetch all records where e.salary > m.salary

SELECT 
    e.name as Employee 
FROM Employee e
INNER JOIN Employee m
ON e.managerId = m.id
WHERE e.salary > m.salary   