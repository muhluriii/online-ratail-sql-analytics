use onlineretaildb;

--top customers

select c.first_name, sum(p.amount) as as total_spent
from customers c
  
inner join orders o
on c.customer_id = o.customer_id

inner join payments p
on o.order_id = p.order_id

where cleared = True

Group by
c.customer_id, c.first_name

order by total_spent desc;


--customers without orders

select c.first_name
from customers c

left join orders o
on c.customer_id = o.customer_id

where o.order_id  is null;

-- customer segmentation

select c.first_name, sum(p.amount) as total_spent,

case

when sum(p.amount) >= 10000
then 'vip'

when sum(p.amount) >=5000
then 'gold'

else 'regular'

end as customer_type

from customers c

inner join orders o
on c.customer_id = o.customer_id

inner join payments p
on o.order_id = p.order_id

where cleared = True;

group by c.customer_id , c.first_name


