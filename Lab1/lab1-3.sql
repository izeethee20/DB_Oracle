select emp.department_id, dep.department_name,round(avg(emp.salary),2) as avg_sal,
dense_rank()over( order by avg(emp.salary))rank
from hr.departments dep, hr.employees emp
where emp.department_id = dep.department_id
group by  emp.department_id, dep.department_name;




