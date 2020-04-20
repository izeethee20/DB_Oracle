select department_id, countEmp
from (select fs.countEmp, fs.department_id,
      dense_rank()over(order by fs.countEmp desc)rank
      from (select count(emp.employee_id)countEmp, emp.department_id
            from hr.employees emp
            group by (emp.department_id)) fs)
where rank=2;
