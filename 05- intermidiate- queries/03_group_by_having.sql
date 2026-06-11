use onlineretaoldb;

-- 'group by' orders per customer

select customer_id , count(customer_id) as total_orders
from orders
group by customer_id;

-- revenue by payment method

select method, sum(amount) as total_amount
from payments 
where cleared = True
group by method;

-- "having" customers with more than one order
select customer_id, count(order_id) total_orders
from orders
group customer_id
having count(order_d) > 1;
