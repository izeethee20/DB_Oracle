select emp.last_name , emp.first_name, emp.department_id, emp.hire_date ,
FIRST_VALUE(emp.last_name) over (order by emp.hire_date asc range between 100 preceding and 100 following) first, 
LAST_VALUE(emp.last_name) over (order by emp.hire_date asc range between 100 preceding and 100 following) last
from hr.employees emp
order by emp.hire_date asc;
