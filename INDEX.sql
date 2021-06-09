use demo1;
# syntax : create index index_name on table_name;
select count(*) from myemp;
select * from myemp;
select * from myemp where HIRE_DATE >'1991-08-01';

select * from user_details limit 20;
select count(*) from user_details;
select * from user_details where first_name = 'david';
create index firt_name on user_details(first_name);  # btree , create a btree index on first_name column
select * from user_details where first_name = 'david';  # serach time is faster 
# hash index:
create index u_id using hash on user_details(user_id);
select * from user_details where user_id = '40000';

show indexes from user_details;


# syntax: create [unique|spatial|full text] index <index_name> on table_name(<col>)










