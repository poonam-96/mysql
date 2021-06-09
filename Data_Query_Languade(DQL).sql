use demo1;
# DQL commands 
##### select command
select * from myemp;  # dislay the table with all columns(*)
select * from myemp limit 10; # limit: use to display specified no of records
select * from myemp limit 2,5;   # display from record 2  in total 5 records
# display the column emp_id, first_name and salary
select EMP_ID, FIRST_NAME,SALARY from myemp;
# select certain rows and cols
select EMP_ID, FIRST_NAME,SALARY from myemp limit 5,10;
# perform mathematical operation on the columns
select EMP_ID, FIRST_NAME,SALARY,SALARY*0.15 from myemp;
SELECT *,SALARY*0.15 FROM MYEMP;
# change the added column name
select EMP_ID, FIRST_NAME,SALARY,SALARY*0.15 as BONUS from myemp;
# change firs_name as fname and last_name as lname
select EMP_ID, FIRST_NAME as fname,last_name as lname,SALARY,SALARY*0.15 as BONUS from myemp;
select * from myemp;
select EMP_ID, FIRST_NAME,SALARY from myemp;

#### all the opeartors( conditonal operator, like operator , logical operator) works only with WHERE clause

SELECT * FROM MYEMP;
# concat fiirst name and last name
select concat(first_name, ' ', last_name) as name, salary from myemp;
# distinct : unque values
select * from myemp;
select distinct dep_id from myemp;
SET SQL_SAFE_UPDATES=0;
# where clause: a condition attached to the command:
select * from myemp where dep_id = 30;
# CONDITIONAL OPERATORS
# conditions which can be used in where clause:
# all the dep_id except dep_id = 50
select * from myemp where dep_id <> 50;  # <> : not equal to 
select * from myemp where dep_id = 100;
select * from myemp where dep_id <= 30;
select * from myemp where dep_id >= 30;
select * from myemp where dep_id < 30;
select * from myemp where dep_id > 30;
# between .... and ....  # inclusive
select * from myemp where salary between 8000 and 9000;

# LIKE OPRATOR : PATTERN MATCHING
# % - match any no of character but stsrts with a spexcified alphabet
# _ - match only a specific no of underscores given
select * from myemp where first_name like 'a%';
select * from myemp where first_name like 'a_____';
select * from myemp where first_name like '% %';
select * from myemp where first_name like '%ta';

# Logical operator
# and, &&  # both condition tp be satisfied
# or, ||  # one condition atleast to be satisfied
# not, !  # negate ouput  # in, not in
select * from myemp where dep_id = 50 and salary >5000;
select * from myemp where dep_id = 60 or salary > 15000;
select * from myemp where dep_id in (100,60,90);
select * from myemp where dep_id not in (100,60,90);

#FUNCTIONS: two types 1)group by, 2)order  by
 
#1)GROUPBY:  aggregate function 
select max(salary) from myemp;
select max(salary),dep_id from myemp group by dep_id;
select min(salary),dep_id from myemp group by dep_id;
select max(salary),dep_id from myemp group by dep_id,mgr_id;
select * from myemp;

#ORDER BY : arrange recordsby order:-
select * from myemp;
select * from myemp order by first_name;  # ascending order by default
select * from myemp order by first_name desc; # desecding order
select * from myemp order by salary desc; 
select * from myemp order by hire_date desc; 
select distinct dep_id from myemp order by dep_id;

# oder by(last command) + group by(first command)
select max(salary),dep_id from myemp group by dep_id order by dep_id;
select * from myemp order by left(last_name,1), first_name;# order lastname and within it order the first name

# JOIN :
# 1) inner 2) left join 3) right join 4) cross join 5) self join

# 1) INNER JOIN : by default inner join is performed
select * from movies;
select * from members;
select * from movies inner join members on movies.id = members.movieid; 
select title,first_name from movies inner join members on movies.id = members.movieid; 

# 2) LEFT JOIN:
select * from movies left join members on movies.id = members.movieid;

# 3)RIGHT JOIN:
select * from movies right join members on movies.id = members.movieid=members.memid;

# 4) cross join: don't require any common record : cartition of two tables
select * from meals;
select * from drinks;

select mealname, drinkname from meals cross join drinks;
select mealname, drinkname,rate from meals cross join drinks;  # error
select meals.mealname, drinks.drinkname,meals.rate,drinks.rate from meals cross join drinks;
select meals.mealname, drinks.drinkname,meals.rate+drinks.rate from meals cross join drinks;
select meals.mealname, drinks.drinkname,meals.rate+drinks.rate as Total_fare from meals cross join drinks;
# allias name 
select m.mealname, d.drinkname,m.rate+d.rate as Total from meals as m cross join drinks as d;
select mv.id,mv.title,mm.first_name,mm.last_name from movies as mv right join members as mm on mv.id = mm.movieid;

# self join: loops back to itself;
select * from myemp;
select emp.emp_id, emp.first_name,mgr.emp_id as mgr_id, mgr.first_name,mgr.last_name 
from myemp as emp join myemp as mgr on emp.mgr_id = mgr.emp_id;





