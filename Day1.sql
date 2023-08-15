CREATE table information1(Cust_id int not null,Name varchar(20) not null,Country varchar(20) not null,City varchar(20),primary key(cust_id));
CREATE table Order_info(Order_id int not null,Order_num varchar(20) not null,Cust_id int);
CREATE table order_info2(Order_id int not null,Order_num varchar(20) not null,Cust_id int. Primary key(order_id),foreign key (cust_id) references information1(cust_id)) ;
select * from information;
Alter table information change Name Full_Name varchar(30);
Alter table information modify Full_Name varchar(50) not null;
Alter table information add column INCOME int not null;
Alter table information add column GENDER int AFTER fULL_NAME int not null;
describe information;
alter table information drop column income;
create table order_info3(Order_id int not null,
						Order_Number int not null,
						Cust_id int not null,
						primary key (Order_id),
							foreign key (Cust_Id)
						references (information(Cust_Id)));
                        
show tables;
	
rename table information2 to information;
select * from information;
Alter table information modify Cust_id varchar(50) not null;
Alter table information modify Cust_id int primary key (cust_id);
ALTER TABLE information
ADD PRIMARY KEY (cust_id);
describe table information;