use onlineretaildb;

-- products abouve avarage

select product_name, price
from products
where products >
  (
  select avg(price) as avarage
  from products
  );

-- customers who placed orders
select *
from customers
where customer_id in
(
  select customer_id
  from orders
);
