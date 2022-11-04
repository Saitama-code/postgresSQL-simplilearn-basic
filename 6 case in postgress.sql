select
    department,
    name,
    salary,
    case
        when salary < 50000 then 'Low Salary'
        when salary < 80000 then 'Medium Salary'
        else 'High Salary'
    end as salary_remarks
from
    employee
order by
    salary desc;