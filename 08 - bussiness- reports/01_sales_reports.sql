use onlineretaildb;

--total revenue

select 
  sum(amount) as total_renue
from payments
where cleared = True;

--total orders 
select 
  count(*) total_orders
from orders;

--average orders
select
  avg(amount) as average_value
from payments
where cleared = True;

--monthly Revenue

select
year(Payments_date) as year_sales,
month(payments_date) as monthly_sasles,
sum(amount) as revenue

from payments
where cleared = true

group by
year(payements_dates),month(payments_dates)

order by year_salaes , monthly_sales
