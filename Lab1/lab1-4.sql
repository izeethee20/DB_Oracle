with ranks as(
    select hr.employees.first_name, hr.employees.last_name, hr.employees.department_id, hr.employees.hire_date,
    rank()over(partition by hr.employees.department_id order by hr.employees.hire_date asc)rank
    from hr.employees)
select ranks.first_name, ranks.last_name, ranks.hire_date, hr.departments.department_name
from ranks 
join hr.departments on hr.departments.department_id = ranks.department_id
where ranks.rank = 2;
