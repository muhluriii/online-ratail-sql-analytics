use onlineretaildb;

select
payment_date,
amount,
lag(amount)
over( order by payment_date) as previous_amount,
lead(amount)
over(order by payment_dates) as next_amount

from payments

where cleared = true;
