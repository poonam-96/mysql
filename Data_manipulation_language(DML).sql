select * from cs_dept;
#1) INSERT COMMAND
# type 1
insert into cs_dept values(2,'leo','DS',null);
select * from cs_dept;
# type-2
insert into cs_dept(sid,course,marks) values (3,'DS',70); # used to insert info of the only known columns
select * from cs_dept;
# type 3
insert into cs_dept values(4,'lisa','DS',null),(5,'lilly','PYTHON',60),(6,'xyz',null,null);
select * from cs_dept;

show tables;

# UPDATE COMMAND
select * from myemp;
select count(*) from myemp;  # command is used to display the total records of your table.
# change the name of a person
update myemp set FIRST_NAME = 'JOY' where EMP_ID= 102;
select * from myemp;
select * from cs_dept;
# null : update null values with a value
update cs_dept set marks='35' where marks is not null;# null does not understand mathematical symbols(=,!=)
select * from cs_dept;
update cs_dept set sname = 'ABC',bsid = 2,course='DS';

insert into Estudent values(2,'pqr',21,'ds'),(10,'aish',39,'mysql');
select * from Estudent;
update Estudent set sname = 'JOY';
use demo1;
select * from Estudent;

# 3) delete : 
SET SQL_SAFE_UPDATES=0;  # where clause works only if i execute this line of code
insert into Estudent values(3,'aish',27,'ds'),(4,'abc',21,'mysql');
delete from Estudent where age < 25;
select * from Estudent;
delete from Estudent;  # delete will delete all the records and will not delte the table, Dml : records
show tables;
select * from Estudent;
truncate Estudent;  # backend it will drop the table and then create the table with empty records
show tables;




#### SET SQL_SAFE_UPDATE=0; #######