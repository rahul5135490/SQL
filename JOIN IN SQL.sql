
use day3
select * from salesorder;
select * from salesorder where orderdate between "2000-03-12" and "2000-03-20";
select year(orderdate) from salesorder;
select * from salesorder where year(orderdate)="2000";
create table customer (cust_id int, cust_name varchar(20),contact_name varchar(20), city varchar(10), telephone varchar(10));
insert into customer values(101,"oliver","joy","new york",2014567890),
(102,"george","george","chicago",2016567890),
(103,"harry","harry","texas",2222567890),
(104,"Jack","Noh","california",2014567890);
select * from customer;
CREATE TABLE Orders ( cust_id INT ,  order_id INT ,      order_date varchar(20),      shipper_id varchar(20));
INSERT INTO Orders VALUES (101, 4501, '12/03/1997', 'A111' ), (102, 4502, '13/03/1997', 'A112'), (103, 4503, '14/03/1997', 'A113'),
(105,4505,'16/03/1997','A115'),(106,4506,'17/03/1997','A116');
select * from orders;
select * from customer;
### left join
SELECT cust.cust_id, cust.cust_name, cust.contact_name, cust.city, 
cust. telephone, ord.cust_id, ord.order_id, ord.order_date, ord.shipper_id 
FROM Customer AS cust LEFT JOIN Orders ord ON cust.cust_id=ord.cust_id;

### Inner join
SELECT cust.cust_id, cust.cust_name, cust.contact_name, cust.city, 
cust. telephone, ord.cust_id, ord.order_id, ord.order_date, ord.shipper_id 
FROM Customer AS cust INNER JOIN Orders ord ON cust.cust_id=ord.cust_id;

### RIGHT
SELECT cust.cust_id, cust.cust_name, cust.contact_name, cust.city, 
cust. telephone, ord.cust_id, ord.order_id, ord.order_date, ord.shipper_id 
FROM Customer AS cust right JOIN Orders ord ON cust.cust_id=ord.cust_id;

# Full join there is no direct formula for full join for this we use left join union right join
SELECT cust.cust_id, cust.cust_name, cust.contact_name, cust.city, 
cust. telephone, ord.cust_id, ord.order_id, ord.order_date, ord.shipper_id 
FROM Customer AS cust LEFT JOIN Orders ord ON cust.cust_id=ord.cust_id
UNION
SELECT cust.cust_id, cust.cust_name, cust.contact_name, cust.city, 
cust. telephone, ord.cust_id, ord.order_id, ord.order_date, ord.shipper_id 
FROM Customer AS cust right JOIN Orders ord ON cust.cust_id=ord.cust_id;

