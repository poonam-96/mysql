use demo1;
create table mytab1(id int PRIMARY KEY auto_increment, name varchar(20), age int);
desc mytab1;
insert into mytab1 (name,age) values ('tim',20);
select * from mytab1;
insert into mytab1 (name,age) values ('tom',21);
select * from mytab1;
alter table mytab1 auto_increment = 100;
insert into mytab1 (name,age) values ('leo',21);
select * from mytab1;
insert into mytab1 (name,age) values ('aish',25);
select * from mytab1;
delete from mytab1;
insert into mytab1 (name,age) values ('poonam',25);

truncate mytab1;
select * from mytab1;
insert into mytab1 (name,age) values ('yoga',25);
select * from mytab1;