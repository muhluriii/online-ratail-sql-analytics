Use onlinereatildb;

select

c.customer_id,
c.first_name,
c.city,

o.order_id,
o.order_date,

p.protuct_name ,

oi.quantity,
oi.unit_Price,

oi.quantity*oi.unit_price as revenue,

pay.amount ,
pay.method

from customers c 

inner join orders o
on c.customer_id = o.customer_id

inner join products p
on o.order_id = oi.order_id

left join payments pay
on order_id = pay.order_id;
