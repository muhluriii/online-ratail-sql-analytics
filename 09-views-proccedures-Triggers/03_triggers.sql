use onlineretaildb;
--audit table

create table product_price_audit
(
  audit_id int auto_increment primary key,
  product_id int ,
  old_price decumal(10.2),
  new_price decimal(10.2),
  changed_at datetime
);

delimeter//

create trigger trackpricechanges

after update
on products

for each row

begin 

if old.price <> new.price then

insert into product_price_audit
(
  productID,
  old_price,
  new_price,
  changer_at
)

values
(
  new.product_id
  old.price,
  new.price,
  current_timestamp
  );
end if;
end//

delimiter //


-testing the trigger

update ptoducts
set price =13000
wher product_id = 101;

select*
from product_price_audit;
