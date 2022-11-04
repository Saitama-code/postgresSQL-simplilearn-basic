-- create statment for employees table
create table employee(
	emp_id int not null primary key,
	emp_name varchar(40),
	email varchar(40),
	gender varchar(10),
	department varchar(40),
	address varchar(40),
	salary real
);

--changing name 
alter table
    employee rename emp_name to name;

--viewing employee table
select
	*
from
	employee;

--import MOCK_DATA_EMPLOYEE.csv file in pgAdmin4 to populate table