create table products (
product_id serial primary key,
name varchar (100) not null,
sku_code char(8) unique not null,
price numeric (10,2) check (price>=0),
stock_quantity int default 0 check(stock_quantity>=0),
is_available boolean default true,
category text not null,
added_on date default current_date,
last_update timestamp default now()

);
 
insert into products (name,sku_code,price,stock_quantity,is_available,category)
values('Wireless Mouse', 'WM-001', 29.99, 150, TRUE, 'Electronics'),
      ('Mechanical Keyboard', 'MK-002', 89.50, 75, TRUE, 'Electronics'),
      ('27-inch Monitor', 'MON-027', 249.99, 30, TRUE, 'Electronics'),
      ('USB-C Hub', 'USB-004', 19.99, 200, TRUE, 'Accessories'),
      ('Ergonomic Chair', 'EC-100', 199.00, 15, TRUE, 'Furniture'),
      ('Standing Desk', 'SD-200', 399.50, 10, TRUE, 'Furniture'),
      ('Noise Cancelling Headphones', 'NCH-300', 149.99, 50, TRUE, 'Audio'),
      ('Bluetooth Speaker', 'BS-400', 59.99, 120, TRUE, 'Audio'),
      ('Webcam 1080p', 'WC-500', 45.00, 85, TRUE, 'Electronics'),
      ('Laptop Stand', 'LS-600', 25.50, 100, TRUE, 'Accessories'),
      ('Gaming Mousepad', 'GMP-700', 15.00, 300, TRUE, 'Accessories'),
      ('External SSD 1TB', 'SSD-1TB', 129.99, 40, TRUE, 'Storage'),
      ('Flash Drive 64GB', 'FD-64GB', 12.50, 500, TRUE, 'Storage'),
      ('Smart Watch', 'SW-800', 199.99, 0, FALSE, 'Wearables'),
      ('Fitness Tracker', 'FT-900', 49.99, 60, TRUE, 'Wearables');

select * from products;
	  