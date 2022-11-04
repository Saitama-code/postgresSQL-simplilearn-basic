-- between, or, offset, limit  
select
    *
from
    employee
where
    salary > 89899
    or (
        emp_id BETWEEN 89
        and 189
    )
order by
    salary desc
limit
    5 OFFSET 2;

-- fetch and offset
select
    *
from
    employee
order by
    salary desc
fetch first
    3 row only offset 2;

--like opertor and some patterns
select
    *
from
    employee
where
    name like 'A%d%';

select
    *
from
    employee
where
    name like '_u%d%';

-- basic sql fuctions : Mathamateical functions
--sum operation
--the sum will be :- 500500 ;) maths baby
select
    sum(emp_id) as "total_id_sum"
from
    employee;

--avg
select
    avg(salary) as mean_salary
from
    employee;

-- max 
select
    max(salary) as max_salary
from
    employee;

--min 
select
    min(salary) as min_salary
from
    employee;

--distinct departments
select
    distinct(department) as department
from
    employee;

--counting employees with null department
--result: 205
select
    count(*)
from
    employee
where
    department is null;

--seting department for null departments
--returns: UPDATE 205
update
    employee
set
    department = 'Analytics'
where
    department is null;

--cheking the same count again;
--result: 0
select
    count(*)
from
    employee
where
    department is null;

--group by based on departments
select
    department,
    avg(salary) as average_salary
from
    employee
group by
    department
order by
    average_salary desc;

--getting counts of employees based on department
select
    department,
    count(emp_id) as "count"
from
    employee
group by
    department;

--having : because you can not use [avg | count] functions in where clause
--does not work : select department, avg(salary) as average_salary from employee group by department where avg(salary) > 70000
select
    department,
    avg(salary) as average_salary
from
    employee
group by
    department
having
    avg(salary) > 70000
select
    department,
    count(emp_id) as count
from
    employee
group by
    department
having
    count(emp_id) > 57;