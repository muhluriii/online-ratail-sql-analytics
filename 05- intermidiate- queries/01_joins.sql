use onlinereatildb;
 -- inner join 
-- show customers and their orders
select c.customer_id, c.frist_name, o.order_id, o.order_date, o.status

from customers c
inner join oreders o
on c.customer_id = o.customer_id;

--left join 
--show all customers including does without orders

select c.customers, c,first_name, o.order_id
from customers c 
left join orders o
on c.customer_id = o.customer_id;

--multiple join
--producs puchased by customers

select c.first_name , p.product_name , oi.quantity,oi.unit_price
from  customers c
inner join orders o
on c.customer_id = o.customer_id

inner join order_items io
on o.order_id= oi.order_id

inner join products p
on oi.product_id = p.product_id;

--self join
--showing impoloyees and managers

select employee_name as employee, employeee_name as manager

from employee e
left join employee m
on e.manager_id = m.employee_id;
