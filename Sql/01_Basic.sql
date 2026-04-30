--select
select * from Employees;

--Filter the data
select * from Employees where salary >= 50000;

--Average salary
select AVG(salary) from Employees;

--Group by 
select department, count(*) from Employees Group by department;

-- top 3 condidate
SELECT * FROM employees
ORDER BY salary DESC
LIMIT 3;