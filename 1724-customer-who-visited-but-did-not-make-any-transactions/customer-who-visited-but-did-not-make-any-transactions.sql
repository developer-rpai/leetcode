# Write your MySQL query statement below
select v.customer_id, count(1) as count_no_trans from visits v
where not exists  (select 1 from transactions t
where t.visit_id = v.visit_id)
group by v.customer_id