-- count,sum,avg,min,max --

use onlineretaildb;

-- "count" total customers

select count(*) as total_customers
from customers;

--"SUM" taotal revenue

select sum(amount)  as total_revenue
from payments
where cleared = True;

-- "AVG" avarage product price
select AVG(price) as avarage_price
from products;

--"MAX" most expensive product

select max(price) as highest_priece
from products:

-- MIN the cheapest product

select min(price) as cheapest
from products;
