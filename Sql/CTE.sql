with avg_salary AS( select AVG(salary) as avg_sal from employees)
select e.employee_id,
e.employee_name,
e.salary
from employee e
join avg_salary a
ON e.salary > a.avg_sal;

