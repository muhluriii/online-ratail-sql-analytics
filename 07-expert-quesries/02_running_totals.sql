use onlinestoredb;

-- revenue growth over time

select payment_date,
amount,
sum(amount)
over( order by payment_date) as running_ravenue

from payments

where cleared = True;
