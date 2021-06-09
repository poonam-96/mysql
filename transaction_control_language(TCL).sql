use demo1;
select * from student;
insert into student values(6,'jerry',21,'MYSQL');
rollback;  # did not work: by default commit is on: if autocommit=True it automatically stores the data in physical storage.
select * from student;
set autocommit=0;
insert into student values(7,'a',23,'ABC');
select * from student;
rollback;
select * from student;
set autocommit=1;
insert into student values(7,'a',23,'ABC');
select * from student;
rollback;
select * from student;

# case 1: two accounts : acc 1 - 50k , acc2 - 20k .
# step 1: debit acc 1
# step2 : credit acc2
# step 3: log debit transaction of acc 1
# step 4: log debit transaction of acc 2
# if all these trnsaction are true perform commit, else rollback
create table tt(id char(1));
insert into tt values('a');
insert into tt values('b');
select * from tt;
rollback;
start transaction;  # by default it will turn off the commit = 0
insert into tt values('c');
insert into tt values('d');
insert into tt values('e');
select * from tt;
rollback;
select * from tt;
start transaction;
insert into tt values('y');
rollback;
select * from tt;
SET SQL_SAFE_UPDATES=0;
delete from tt;
select * from tt;

use demo1;
start transaction;  # autocommit = 0
insert into tt values('a');
insert into tt values('b');
savepoint sb;
insert into tt values('c');
savepoint sc;
insert into tt values('d');
insert into tt values('e');
insert into tt values('f');
insert into tt values('g');
savepoint sg;
insert into tt values('h');
commit; # commit : store all the values inside the phy storage
select * from tt;
rollback to sb;
SET SQL_SAFE_UPDATES=0;
delete from tt;
select * from tt;

drop table tt;
select * from tt;

create table tt(id char(1));
start transaction;  # autocommit = 0
insert into tt values('a');
insert into tt values('b');
savepoint sb;
insert into tt values('c');
savepoint sc;
insert into tt values('d');
insert into tt values('e');
insert into tt values('f');
insert into tt values('g');
savepoint sg;
insert into tt values('h');start transaction;  # autocommit = 0

select * from tt;
rollback to sg;
select * from tt;
rollback to sb;
select * from tt;
use demo1;proc_loop


















