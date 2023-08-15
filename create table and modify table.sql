create database day2;
use day2
create table information(cust_id int not Null,
Full_Name varchar(20) not null,
country varchar(20) not null,
city varchar(20) not null);

create table personal_info(cust_id int not null,
name varchar(30) not null, country varchar(20) not null, city varchar(20) not null)

create table personal_info2(cust_id int not null,
name varchar(30) not null, country varchar(20) not null, city varchar(20) not null, primary key (cust_id))


create table Order_info (order_id int not null,
order_num int not null,
cust_id int,
primary key (order_id),
	foreign key (cust_id)
    references personal_info2(cust_id));
select * from personal_info2;
show databases
alter table personal_info2 change name full_name varchar(40);
alter table personal_info2 modify full_name varchar(50);
alter table personal_info2 add column Income int;
describe personal_info2;
alter table personal_info2 add column Income2 int
alter table personal_info2 drop column Income;
select * from personal_info;
drop table personal_info;
rename table personal_info2 to information1;
select * from information1;
