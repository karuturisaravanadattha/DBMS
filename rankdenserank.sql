---rank
select id,name,salary,
rank() over(order by salary desc,age) as rnk
from employee
where salary is not null;

select id,name,salary,
rank() over(order by salary desc) as rnk
from employee
where salary is not null;

--dense_rank

select id,name,salary,
dense_rank() over(order by salary desc) as rnk
from employee
where salary is not null;


select id, name, department, gender, salary,
dense_rank() over(partition by department,gender order by salary desc) as rnk
from employee
where salary is not null;

