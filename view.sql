create or replace view employee_ranks
as
with cte as
(
     select id,name,salary,department,
     rank() over(partition by department order by salary desc)
     as rank
     from employee
     where salary is not null
)select * from cte where rank = 1;

select * from employee_ranks;

create or replace  view customer_orders_cnt
as
select c_name , count(*) as order_cnt from 
customers c
join
orders o
on c.c_id = o.customer_id
group by c_id,c_name;

select * from customer_orders_cnt;