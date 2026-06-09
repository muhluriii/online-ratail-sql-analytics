create table customers
(  customer_id int primary key,
  first_name varchar(50) not null,
  last_name varchar(50) not null,
  email varchar(100) unique not null,
  city varchar(30) not null
  );


create table categories
(
  category_id int primary key,
  cartegory_name varchar(50) not null
);


create table suppersliers
(
  supplier_id int primary key,
  supplier_name varchar(50) not null,
  email varchar(100) unique
);


create table products
(
  product_id in not null,
  product_name varchar(50) not null,
  category_id int,
  supplier_id int,
  price  decimal(10,2) check(price> 0),

  foreign key(category_id) references categories(category_id),
  foreign key(supplier_id) references suppliers(supplier_id)
);


create table employees
(
  employee_id int primary key,
  employee_name  varchar(30),
  manager_id int,

  foreign key (manager_id) references employees(employee_id)
);


create table orders
(
  order_id int primary key,
  customer_id int not null,
  employee_id int,
  order_date date not null,
  status varchar(20) default 'pending',

  foreign key(customer_id) references customers(customer_id),
  foreign key(employee_id) references employees(employee_id)
);


create order_items
(
  order_id int ,
  product_id int
  quantity int check(quantity > 0),
  unit_price decimal(10,2) check ( unit_price > 0),

  primary key( order_id ,product_id),

  foreign key(order_id) references orders(order_id),
  foreign key (product_id) references products(product_id)
);


create table payments
(
  payment_id int primary key,
  order_id int,
  payement_date date,
  amount decimal(10,2) check(amount >0),
  method varchar(15),
  cleared boolean default False,

  foreign key(order_id) references orders(order_id)
);
