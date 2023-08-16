Use day3
select cust_id from orders union select cust_id from customer;
select cust_id from orders intersect select cust_id from customer;
select * from orders where orders.cust_id in (select customer.cust_id from customer);

