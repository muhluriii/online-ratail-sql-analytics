use onlinereatildb;
--index on customers id

create index idx_orders_customer
on oders(customer_id);
-------------------------------------------------------------
--
Purpose:

Indexes improve query performance.

Business use:

Without indexes:

Database scans entire table

With indexes:

Database finds records faster
