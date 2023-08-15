create	database mydemo;
use mydemo;
show	databases;
create table data_of_customer
(

  customer_id varchar(6),
  first_name varchar(40),
  middle_name varchar(40),
  last_name varchar(40),
  city varchar(40),
  age int(10),
  mobile_no varchar (10),
  occupation varchar (30),
  date_of_birth date
  );
select * from data_of_customer;




insert into KUTTA (ID,NAME,AGE,ADDRESS,DOB,SALARY