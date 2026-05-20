WITH RECURSIVE employee_hierarchy as(

    select id, name, manager_id, 1 as level from employees where manager_id IS NULL
    union all
    select e.id,
    e.name,
    e.manager_id,
    eh.level +1
    from employees e 
    join employee_hierarchy eh
    ON e.manager_id = eh id
)

SELECT *
FROM employee_hierarchy;