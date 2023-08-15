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
show databases;
show tables;
drop table order_info;
show tables;	
describe information;
create table order_info(Order_id int not null,
						Order_Number int not null,
						Cust_id int not null,
						primary key (Order_id),
							foreign key (Cust_id)
						references (information(Cust_id)));

use day1
rename table information to personal_info;
select * from personal_info;
insert into personal_info(cust_id,full_name,country,city)
values (103,"ParmAnu","India","Kolkata")
update personal_info set full_name="john" where cust_id=101;
delete from personal_info where full_name="ParmAnu";
select * from personal_info where city="chennai";

CREATE table product_sales(Item_type varchar(20),Item_num int,store_size varchar(20),Sales int);
insert into product_sales(item_type,item_num,store_size,sales)
values("Dairy",32,"Medium",2000)
insert into product_sales(item_type,item_num,store_size,sales)
values("Fruit",23,"Small",2000)
insert into product_sales(item_type,item_num,store_size,sales)
values("Baking Goods",25,"Large",1300)
insert into product_sales(item_type,item_num,store_size,sales)
values("Snack Food",27,"Small",1400)
select * from product_sales;
Select Item_Type, item_num,Sales from Product_Sales where Sales>1500;
select * from product_sales where store_size="large";
select item_type,sales from product_sales where sales between 1300 and 1500;
select item_type,sales from product_sales where sales between 1300 and 1500;
select * from product_sales;
select item_type,item_num from product_sales where item_num between 23 and 25;
select item_type,item_num from product_sales where item_num in(23,25);
select * from movie_metadata;
select * from diabetes;
CREATE TABLE SalesOrders (    ID INTEGER,    CustomerID Integer,    OrderDate Date,    FinancialCode Char( 2 ),    Region Char( 7 ),    SalesRepresentative Integer);
INSERT INTO SalesOrders VALUES(2001, 101, '2000-03-16', 'r1', 'Eastern', 299); INSERT INTO SalesOrders VALUES( 2002, 102, '2000-03-17', 'r2', 'Western', 399); INSERT INTO SalesOrders VALUES (2003, 103, '2000-03-18', 'r3', 'Western', 499); INSERT INTO SalesOrders VALUES (2004, 104, '2001-01-02', 'y1', 'Eastern', 599); INSERT INTO SalesOrders VALUES (2005, 105, '2001-01-03', 'y2', 'Western', 699); INSERT INTO SalesOrders VALUES (2006, 106, '2001-01-04', 'y3', 'Eastern', 799);
select * from salesorders where year(orderdate)="2000";
select DATE_FORMAT(OrderDate,'%d/%m/%y') from SalesOrders;
select Region, count(Region) 
from SalesOrders
group by Region
having count(Region)>2;
select OrderDate,count(*) from SalesOrders group by OrderDate having count(*)>2;
select * from salesorders order by customerid desc;
select * from salesorders order by region desc;
select * from customer;
show tables
CREATE TABLE Customer (cust_id INT ,      cust_name VARCHAR(20),      contact_name VARCHAR(20),     city  VARCHAR(10),              telephone   VARCHAR(10));
INSERT INTO Customer VALUES (103, "Oliver", "Joy", "New York", 2016776708), (104,"George", "George", "Chicago" , "209761700");
INSERT INTO Customer VALUES (104, "Lack", "Noh", "California", 2916776708);
CREATE TABLE Orders ( cust_id INT ,  order_id INT ,      order_date varchar(20),      shipper_id varchar(20));
select * from customer;
CREATE TABLE Orders ( cust_id INT ,  order_id INT ,      order_date varchar(20),      shipper_id varchar(20));

INSERT INTO Orders VALUES (101, 4501, '12/03/1997', 'A111' ), (102, 4502, '13/03/1997', 'A112'), (103, 4503, '14/03/1997', 'A113'),
(105,4505,'16/03/1997','A115'),(106,4506,'17/03/1997','A116');
select * from customer;
select * from orders;
CREATE TABLE Customer (cust_id INT ,      cust_name VARCHAR(20),      contact_name VARCHAR(20),     city  VARCHAR(10),              telephone   VARCHAR(10));
SELECT cust.cust_id, cust.cust_name, cust.contact_name, cust.city, 
cust. telephone, ord.cust_id, ord.order_id, ord.order_date, ord.shipper_id 
SELECT cust.cust_id, cust.cust_name, cust.contact_name, cust.city, 
cust. telephone, ord.cust_id, ord.order_id, ord.order_date, ord.shipper_id 
FROM Customer AS cust LEFT JOIN Orders ord ON cust.cust_id=ord.cust_id
UNION 
SELECT cust.cust_id, cust.cust_name, cust.contact_name, cust.city, 
cust. telephone, ord.cust_id, ord.order_id, ord.order_date, ord.shipper_id 
FROM Customer AS cust right JOIN Orders ord ON cust.cust_id=ord.cust_id;
SELECT cust.cust_id, cust.cust_name, cust.contact_name, cust.city, 
cust. telephone, ord.cust_id, ord.order_id, ord.order_date, ord.shipper_id 
FROM Customer AS cust LEFT JOIN Orders ord ON cust.cust_id=ord.cust_id
UNION 
SELECT cust.cust_id, cust.cust_name, cust.contact_name, cust.city, 
cust. telephone, ord.cust_id, ord.order_id, ord.order_date, ord.shipper_id 
FROM Customer AS cust right JOIN Orders ord ON cust.cust_id=ord.cust_id;