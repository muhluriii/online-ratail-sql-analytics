use onlineretaildb;

-- low stock products

select product_name,stock_quantity

from products
where stock_quantity <20;

-- revenue by product

select
p.product_name , sum(oi.quantity*oi.unit_price) as revenue

from product p

inner join order_items oi
on p.product_id=oi.product_id

group by p.product_name
order by revenue desc;

-- best selling products

select 
 p.product_name,
sum(oi.quantinty) as total_sold

from products p

inner join order_items oi
on  p.products_id = oi.product_id

group by p.product_name

order by total_sold desc;




