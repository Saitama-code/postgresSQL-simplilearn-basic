-- User defined functions
create
or replace function count_emails() returns integer as $ total_emails $ DECLARE total_emails integer;

begin
select
	count(email) into total_emails
from
	employee;

return total_emails;

end;

$ total_emails $ language plpgsql;

select
	count_emails();

SELECT
	count(emp_id)
from
	employee
where
	email is not null;