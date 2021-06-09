use demo1;
select * from shop;
call make_payment3(100,20);
call make_payment3(15,null);
call make_payment5(100,null);
select * from authors;
insert into authors value(4,'james');
insert into authors value(2,'john');
insert into authors value(7,'joy');
insert into authors value(8,'lilly');
insert into authors value(6,'lucus');
insert into authors value(1,'lucus');
select * from authors where author_id < 5;  # print the result, not store the results
call proc_cursor();
call make_payment(19,null);
call proc_cursor();
use demo1;
select * from products;
desc orders;
select * from orders;
call proc_order();
select * from orders;
select * from myemp limit 10;
select last_name, year(hire_date) from myemp;  # system defined function
select last_name, experience(emp_id) from myemp;  # not predefined we need to write a code for it
set sql_safe_updates=0;
set global log_bin_trust_function_creators=1;
# call proce_name();
select last_name, hire_date,experience(emp_id) from myemp;
select last_name, hire_date,experience(emp_id) from myemp where experience(emp_id) > 40;