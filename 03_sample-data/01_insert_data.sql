use onlineretailDB

  --customers
insert into customers values
  (1,'Muhluri','Ngobeni','muhluri@gmail.com,'limpopo'),
  (2,'Aisha', 'Khan','aisha@gmail.com','Durban'),
  (3,'Naledi','Dlamini','naledi@gmail.com','Pretoria'),
  (4,'Sipho','Nkosi','sipho@gmail.com','Cape Town')
  (5,'Lerato','Mabena','lerato@gmail.com','Johannesburg')
  (6,'Thabo', 'Mokeona','thabo@gmail.com','Johannesburg');

  --categories
insert into categories values
  (1,'ELectronics'),
  (2,'Furniture'),
  (3,'Office Supplies');

  ---suppliers
insert into suppliers values 
  (1,'TechWorld','sales@techworld.com'),
  (2,'officemart,'infor@officemart.com');

---products

insert into products values
  (101, 'Laptop', 1, 1, 12000.00, 15),
  (102, 'Wireless Mouse', 1, 1, 250.00, 80),
  (103, 'Office Chair', 2, 2, 1800.00, 20),
  (104, 'Desk', 2, 2, 2500.00, 10),
  (105, 'Notebook', 3, 2, 50.00, 200);

--empolyees 

insert into employees values
  (10,'sarah managar',null),
  (11,'john Assistant',10 ),
  (12,'Mary Clack',11);

--orders

insert into orders
(5001, 1, 11, '2026-05-01', 'Delivered'),
(5002, 2, 12, '2026-05-03', 'Pending'),
(5003, 1, 11, '2026-05-05', 'Paid'),
(5004, 3, 12, '2026-05-07', 'Delivered'),
(5005, 5, 11, '2026-05-10', 'Paid');

-- order_items

insert into order_items values
(5001, 101, 1, 12000.00),
(5001, 102, 2, 250.00),
(5002, 103, 1, 1800.00),
(5003, 102, 1, 250.00),
(5004, 104, 1, 2500.00),
(5005, 105, 10, 50.00);

-- payments

insert into payments values
(9001, 5001, '2026-05-01', 12500.00, 'Card', TRUE),
(9002, 5003, '2026-05-05', 250.00, 'EFT', FALSE),
(9003, 5004, '2026-05-07', 2500.00, 'Card', TRUE),
(9004, 5005, '2026-05-10', 500.00, 'Cash', TRUE);
