select hr.departments.department_name, hr.employees.last_name, hr.employees.first_name,  hr.employees.salary,
round(ratio_to_report(salary)over(),3) pctOfTotal,
round(ratio_to_report(salary)over(partition by hr.employees.department_id),3) pctOfDep
from hr.employees 
join hr.departments on hr.employees.department_id = hr.departments.department_id;
