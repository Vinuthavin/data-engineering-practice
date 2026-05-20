with dept_total as(
    select department_id,
    SUM(salary) as total_salary
    from employees
    group by department_id
),

dept_avg as( 
    select department_id,
    avg(salary) as avg_salary
    from employees
    group by department_id
)

select d.department_id
d.total_salary
d.avg_salary
from dept_total d
join dept_avg a 
ON d.department_id = a.department_id;


