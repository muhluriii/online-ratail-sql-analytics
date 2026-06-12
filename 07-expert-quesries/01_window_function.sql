use onlinereatildb;

-- row number

select  product_name,
price,
row_number()
over(
  order by price  desc
  ) as row_num

from products;

--rank

select product_name,
  price,
  rank()
  over
    (
        order by price desc
    ) as price_rank_num

from products;

--dense rank

select product_name,
  price,
  dense_rank()
  over
    (
        order by price desc
    ) as price_rank_num

from products;

