select id,name,date_of_joining,salary,
sum(salary) over(order by date_of_joining) as running_sal
from employee
order by date_of_joining;

with cte as(
select id,name,date_of_joining,salary,
sum(salary) over(order by date_of_joining) as running_sal
from employee
order by date_of_joining)
select * from cte where running_sal > 1000000
order by running_sal
fetch first 1 row only;