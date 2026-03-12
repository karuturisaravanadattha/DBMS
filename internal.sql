select * from employee;
select sum(salary) from employee;
select department,sum(salary) from employee group by department;
select min(salary) from employee;
select department,min(salary) from employee group by department;
select max(salary) from employee;
select department,max(salary) from employee group by department;
select count(*) from employee;
select department,count(*) from employee group by department;

create or replace  view customer_orders_cnt
as
select c_name , count(*) as order_cnt from 
customers c
join
orders o
on c.c_id = o.customer_id
group by c_id,c_name;

select * from customer_orders_cnt;
drop view customer_orders_cnt;
