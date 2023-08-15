
create table emp_data2(
id int not null,
ename varchar(20),
dob date,
address varchar(30),
primary key(id)
);
select * from emp_data2;
select ename from emp_data2 where dob ="1996-10-07";

insert into emp_data values("10005","Ratan","Mumbai");
insert into emp_data values("10006","Raniji","Mumbai");
insert into emp_data values("10007","Ramani ji","Delhi");
insert into emp_data values("10008","Raman ji","Delhi");

select count(ename),address from emp_data2 group by address having count(ename)>2;
select * from emp_data;
select * from emp_data2;
show tables;
select * from emp_data left join  emp_data2 on emp_data2.id=emp_data.id;
select * from emp_data right join  emp_data2 on emp_data2.id=emp_data.id;
select * from emp_data inner join  emp_data2 on emp_data2.id=emp_data.id;

select * from emp_data left join  emp_data2 on emp_data2.id=emp_data.id
union
select * from emp_data right join  emp_data2 on emp_data2.id=emp_data.id;

USE sq;
show tables;
select * from customers;