use onlineretaildb;

select product_name,price

case
  when price >= 10000
  then 'premium'

  when price >= 1000
  then 'standard'

  else 'budget'
end as product_category

from products;
