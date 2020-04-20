select emp.department_id, emp.last_name, emp.first_name, emp.commission_pct,
dense_rank()over(partition by emp.department_id order by emp.commission_pct)rankWithComm,
dense_rank()over(partition by emp.department_id order by emp.employee_id)rank
from hr.employees emp,hr.departments dep
where emp.commission_pct>0
and
dep.department_id = emp.department_id
order by emp.department_id;
