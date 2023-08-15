show databases;
use edureka
show tables;
select * from emp;
select count(address) from emp;

select	count(id) from emp;
ALTER TABLE emp
ADD Landline varchar(40);
UPDATE emp
SET Landline = "9678990982"
WHERE id = 6;
select avg(marks) from emp;
select sum(marks) from emp;
select * from emp;
select count(id), address from emp group by address;
select * from emp where marks >=90;
select * from emp where last_name like "S%";
select * from emp where last_name like "S%h";
select * from emp where last_name is not null;
select * from emp where Landline is null;
select case(address) 
when "Muz" then "Bihar"
else "no idea" 
end
from emp;alter





