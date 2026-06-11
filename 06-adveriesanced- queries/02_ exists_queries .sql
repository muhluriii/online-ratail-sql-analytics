use onlineretaildb;
-- exist

select ccustomer_id , c.first_name
from customers c
where exists
(
  select 1
  from orders o
  where o.customer_id = c.customer_id
);

