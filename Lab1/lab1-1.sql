select last_name, first_name, job_id, salary
from employees emp
where 3>(select count(*)
         from employees
         where salary > emp.salary)
or 
      2>(select count(*)
         from employees
         where salary < emp.salary)
order by 2 desc;
