use onlinerataildb;

delimeter //
create procedure GetCustomerOrders
(
  in cust_id int
)

begin

select
c.first_name,
c.last_name

o.order_id,
o.order_date,
o.status

from customer c

inner join orders o
on c.customer_id= o.customer_id

where cust_id= c.customer_id;

end//
delimeter;

--execute procedure
Call GetcustomerOrders(1);
