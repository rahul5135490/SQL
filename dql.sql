rename table information1 to personal_info;
show tables;
select * from personal_info;
describe personal_info;
alter table personal_info drop column income2;
select * from personal_info;
insert into personal_info(cust_id,full_name,country,city)
values(101,"Alex","USA","Miami"),
	  (102,"Mia","Australia","Sydney"),
      (103,"Joy","India","Delhi")
describe personal_info;
update personal_info set full_name="john" where country="usa";
select * from personal_info;
delete from personal_info where full_name="joy";
select * from personal_info;

### DQL
select * from personal_info;
select full_name,city from personal_info;
select * from personal_info where city="miami";
CREATE table product_sales(Item_type varchar(20),Item_num int,store_size varchar(20),Sales int);
insert into product_sales(item_type,item_num,store_size,sales)
values("Dairy",32,"Medium",2000)
insert into product_sales(item_type,item_num,store_size,sales)
values("Fruit",23,"Small",2000)
insert into product_sales(item_type,item_num,store_size,sales)
values("Baking Goods",25,"Large",1300)
insert into product_sales(item_type,item_num,store_size,sales)
values("Snack Food",27,"Small",1400)
###
select item_type,item_num,sales from product_sales where sales>1500;
## or
select item_type,item_num,sales from product_sales where sales=2000;
select item_type,item_num,sales,store_size from product_sales where store_size="large";
select item_type,sales from product_sales where sales between 1300 and 1500;
select * from product_sales;
select item_type,item_num,sales from product_sales where item_num between 23 and 25;
select item_type,item_num,sales from product_sales where item_num in(23,25);

