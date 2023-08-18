create database day6;
use day6;
# Create Table A and Table B
create table Table_A (cust_id int, cust_name varchar(20),contact_name varchar(20), city varchar(10), telephone varchar(10));
insert into Table_A values(101,"oliver","joy","new york",2014567890),
(102,"george","george","chicago",2016567890),
(103,"harry","harry","texas",2222567890),
(104,"Jack","Noh","california",2014567890),
(106,"Tigloo","Pathak","India",9222567890),
(108,"Mithai lal","Rebari","Pakistan",5014567890),
(109,"Chasmuddin","ansari","India",7722567890),
(111,"Chhedi","lal","Mauritisus",3014567890);

# create table B
CREATE TABLE table_B ( cust_id INT ,  order_id INT ,      order_date varchar(20),      shipper_id varchar(20));
INSERT INTO table_B VALUES (101, 4501, '12/03/1997', 'A111' ), (102, 4502, '13/03/1997', 'A112'), (103, 4503, '14/03/1997', 'A113'),
(105,4505,'16/03/1997','A115'),(106,4506,'17/03/1997','A116'),(107,4507,'16/03/1998','A117'),(108,4506,'17/03/1999','A116'),(109,4505,'16/07/1999','A119'),(110,4506,'17/03/2000','A120');

select * from table_A
select * from table_B
### left join
SELECT A.cust_id, A.cust_name, A.contact_name, A.city, 
A. telephone, B.cust_id, B.order_id, B.order_date, B.shipper_id 
FROM table_A AS A LEFT JOIN Table_B B ON A.cust_id=B.cust_id;

### right joint
SELECT A.cust_id, A.cust_name, A.contact_name, A.city, 
A. telephone, B.cust_id, B.order_id, B.order_date, B.shipper_id 
FROM table_A AS A right JOIN Table_B B ON A.cust_id=B.cust_id;

### INNER JOIN
SELECT A.cust_id, A.cust_name, A.contact_name, A.city, 
A. telephone, B.cust_id, B.order_id, B.order_date, B.shipper_id 
FROM table_A AS A INNER JOIN Table_B B ON A.cust_id=B.cust_id;

# Full join there is no direct formula for full join for this we use left join union right join
SELECT A.cust_id, A.cust_name, A.contact_name, A.city, 
A. telephone, B.cust_id, B.order_id, B.order_date, B.shipper_id 
FROM table_A AS A right JOIN Table_B B ON A.cust_id=B.cust_id
union
SELECT A.cust_id, A.cust_name, A.contact_name, A.city, 
A. telephone, B.cust_id, B.order_id, B.order_date, B.shipper_id 
FROM table_A AS A LEFT JOIN Table_B B ON A.cust_id=B.cust_id;
### INTERSECTION
## FIRST METHOD
select cust_id from TABLE_A intersect select cust_id from TABLE_B;
## SECOND METHOD
select * from TABLE_A where TABLE_A.cust_id in (select TABLE_B.cust_id from TABLE_B);
### UNION
select cust_id from TABLE_A union select cust_id from TABLE_B
### UNION ALL
select cust_id from TABLE_A union ALL select cust_id from TABLE_B;



