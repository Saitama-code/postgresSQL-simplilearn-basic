--String funciton
--Length of string
select
    char_length('India is my country');

--concat strings
select
    concat('PostgresSQL ', 'is ', 'interesting.');

-- select character from left of a string
select
    left('India is my lovely country', 5);

-- select character from right of a string
select
    right('India is my lovely country', 7);

-- repeates a string n number of times
select
    repeat('Utkarsh', 6);

-- reverse a string
select
    reverse('Utkarsh');