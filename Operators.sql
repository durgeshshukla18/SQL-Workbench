use practice;

CREATE TABLE cart_items 
(
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    quantity INT NOT NULL,
    price DEC(5,2) NOT NULL,
    sales_tax DEC(5,2) NOT NULL DEFAULT 0.1,
    CHECK(quantity > 0),
    CHECK(sales_tax >= 0) 
);

INSERT INTO cart_items(name, quantity, price)
VALUES('Keyboard', 1, 50);

desc cart_items;

select * from cart_items;

INSERT INTO cart_items(name, quantity, price, sales_tax)
VALUES('Battery',4, 0.25 , DEFAULT);

-- alter table cart_items
-- alter column

create database arithematic;
use arithematic;

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    quantity INT,
    price_per_unit DECIMAL(10, 2),
    discount DECIMAL(10, 2)
);

select * from sales;

INSERT INTO sales (sale_id, product_id, quantity, price_per_unit, discount) VALUES
(1, 101, 10, 15.00, 2.00),
(2, 102, 5, 25.00, 5.00),
(3, 103, 8, 30.00, 3.00),
(4, 104, 3, 45.00, 4.50);

select sale_id, (quantity * price_per_unit) as total_price from sales;

select product_id, (quantity * price_per_unit - discount) as net_price from sales;

select sale_id, product_id, (quantity * price_per_unit - discount) as net_price from sales;

select sale_id, product_id, (quantity * price_per_unit - discount) as net_price from sales where sale_id % 2 = 0;

select sale_id, product_id, (quantity * price_per_unit - discount) as net_price from sales where sale_id % 2 = 0 && product_id % 2 != 0;

select sale_id, product_id, (quantity * price_per_unit - discount) as net_price from sales where sale_id % 2 = 0 && product_id % 2 = 0;

select sale_id, product_id, (quantity * price_per_unit - discount) as net_price from sales where sale_id & product_id % 2 = 0;


CREATE TABLE user_permissions (
    user_id INT PRIMARY KEY,
    permissions INT
);

INSERT INTO user_permissions (user_id, permissions) VALUES
(1, 1),  -- Read
(2, 2),  -- Write
(3, 4),  -- Execute
(4, 8),  -- Delete
(5, 3),  -- Read and Write
(6, 7),  -- Read, Write, and Execute
(7, 15); -- All permissions (Read, Write, Execute, Delete)

