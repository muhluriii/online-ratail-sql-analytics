-- revenue by city
use onlineretaildb;

select c.city,sum(p.amount) as revenue

from  customer c
inner join orders o
on c.customer_id = o.customer_id

inner join payments p
on o.order_id = p.order_id

where p.cleared = True

group by c.city

order by revenue desc;

--top spending customers

select c.first_name , sum(p.amount)  as money_spent

from customer c

inner join orders o
on c.customer_id = o.customer_id

inner join psyments
on o.order_id = p.order_id

where  p.cleared = true

group by c.frist_name , c. customer_id

order by money_spent  desc;
