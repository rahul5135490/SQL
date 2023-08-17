show tables

select * from bank_inventory_pricing;
# what is the total number of transaction?
select count(*) as total_transaction from bank_inventory_pricing;
# which product has heighest price?
select product,price from  bank_inventory_pricing order by Price desc limit 1;
# calculate the total product of each product soldinformation

select product,sum(quantity) from  bank_inventory_pricing group by product;
# what is the avg purchase of all the products?
select product,avg(purchase_cost) from  bank_inventory_pricing group by Product;
## remove null items from list
select product,avg(purchase_cost) from  bank_inventory_pricing  where purchase_cost is not null group by Product;
select product, avg(purchase_cost) from bank_inventory_pricing group by Product;
select month, sum(quantity) as total_quantity_sold
from bank_inventory_pricing
group by month
order by total_quantity_sold desc limit 1;

create table employee (employee_id int primary key, first_name varchar(50),last_name varchar(50),salary decimal(10,2));
insert into employee (employee_id,first_name,last_name,salary)
values
(1,"John","Doe",55550.88),
(2,"Jane","Smith",75550.88),
(3,"Mitchell","Jonshon",1055550.88),
(4,"Emily","Williams",95550.88),
(5,"William","Brown",85550.88);
select * from employee;
### view to show the salary employee greater than 80000
create view high_salary_employee as select employee_id, concat(first_name," " ,last_name) as full_name,salary from employee where salary>80000;
select * from high_salary_employee;
create view low_salary_employee as select employee_id, concat(first_name," " ,last_name) as full_name,salary from employee where salary<70000;
select count(*) from high_salary_employee;
# calculate average salary of low salary employee;
select avg(salary) from low_salary_employee;
## Get the high salary among high salary employee
select max(salary) from high_salary_employee;
# combine data from both views
