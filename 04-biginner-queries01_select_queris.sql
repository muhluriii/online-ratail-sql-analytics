use onlineretailDB;
-- 1 view all customers

select *
from customers;

--2 view customers names and cities

select first_name , city
from customers;

-- 3 show customes unique cities

select distinct city
from customers;

--4show products coasting more tham R1000

select product_name, price
from products 
where price > 1000;

-- 5 show customers from johannesburg

select first_name,city
from customers
where city='Johannesburg';

-- 6 sort product by price from highest

select *
from products
order by price desc;

-- using limit to show the first 3 products

select *
from products
limit 3;
