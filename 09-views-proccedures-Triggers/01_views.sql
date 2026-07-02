use onlinereatildb;

create view sales_report as

select 
o.order_id, o.order_date,
c.first_name, c.last_name,
p.product_name,
oi.quantity, oi.unit_price,

(oi.quantity*oi.unit_price) as line_total,
pay.amount as payment_amount

from customers c

inner join orders o
on c.customer_id=o.customer_id

inner join order_items oi
on o.oder_id=oi.order_id

inner join product p
on oi.product_id = p.product_id

left join payments pay
on o.order_id= pay.order_id


--using the view

select *
from sales_report;
