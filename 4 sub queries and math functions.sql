--sub queries : alternative is having and using svg functions
select
    name,
    department,
    salary
from
    employee
where
    salary > (
        select
            avg(salary)
        from
            employee
    );

/* Sql Functions*/
-- absolute
select
    abs(-12312);

--least in a list
select
    least(1, 23, -213, 4, 213);

--mod
select
    mod(4, 2);

--power
select
    power(2, 4);

--sqrt
select
    sqrt(16);

--sin: trignometry
select
    sin(0);

--ceil
select
    ceil(9.31);

--floor
SELECT
    floor(9.31);