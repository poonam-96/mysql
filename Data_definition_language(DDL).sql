##### step 1:  creating and chceking data bases
show databases; # it is used to show th database that are available in our workbench
create database demo1;  # command to create a database
show databases;
drop database abc;  # drop the database
show databases;
create database demo2; 
show databases;
###### tell the server on which database you want to work on
use demo1; 
show tables;  # to check if any table in ur database

# DDL(data definition language): deals with table structure
### different commands 1) create table, 2) alter table, 3) drop table,4) rename table 5) truncate 

# 1) create table:
create table Estudent(stid int, sname char(20),age int,course char(20));
select * from Estudent;  # see you table and also data inside the table
desc Estudent;  # see the data type
### to insert values inside a table
insert into Estudent values(1,'poonam',26,'mysql');
insert into Estudent values(20,Null,30,'mysql');
select * from Estudent;
insert into Estudent values(2,'xyz',20,'ds');
show tables;

# 2) Drop command
drop table Estudent;
show tables;   # the entire table would be deleted

# 3)alter: alter the table structure
create table cs_dept(stdid int, sname char(30), tname char(20), course char(10));
insert into cs_dept values(1,'joy', 'XYZ', 'DS');
select * from cs_dept;
# add new col in the table
alter table cs_dept add column marks int;
select * from cs_dept;
# delete a col
alter table cs_dept drop column tname;
select * from cs_dept;
# change column name:
alter table cs_dept change column stdid sid int;
select * from cs_dept;
# alter the data type of a column
desc cs_dept;
alter table cs_dept modify column sname varchar(10);
desc cs_dept;
# alter the table name
alter table cs_dept rename to my_class;
show tables;

# rename: renaming the table
rename table my_class to cs_dept;
show tables;