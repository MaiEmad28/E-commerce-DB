CREATE TABLE Category (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(45) NOT NULL
);
CREATE TABLE Product (
product_id Int primary key,
category_id int ,
product_name varchar(50) not null, 
product_description varchar(100),
product_price Numeric(7,2) not null,
product_stock_quantity int default 0,
FOREIGN key (category_id) REFERENCES category(category_id )
);
CREATE TABLE Customer (
customer_id int primary key,
customer_first_name varchar(50) not null,
customer_last_name varchar(50) not null,
customer_email varchar(100) not null unique,
customer_password varchar(255) not null
);
CREATE TABLE Orders (
order_id int primary key,
customer_id int,
order_date date ,
order_total_amount numeric(7,2),
FOREIGN key (customer_id) REFERENCES customer(customer_id )
);
CREATE TABLE Order_details (
order_detail_id int,
order_id int,
product_id int,
quantity int not null,
unit_price numeric(7,2) not null,
FOREIGN key (order_id) REFERENCES Orders(order_id ),
FOREIGN key (product_id) REFERENCES product(product_id )
);

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO category (category_id, category_name)
VALUES
(1, 'Mobile Phones'),
(2, 'Laptops'),
(3, 'Furniture'),
(4, 'Groceries'),
(5, 'Beauty Products');

INSERT INTO Product (product_id, category_id, product_name, product_description, product_price, product_stock_quantity)
VALUES
(1, 1, 'iPhone 15', 'Apple smartphone', 999.99, 20),
(2, 2, 'Dell XPS 13', 'Compact laptop', 1299.50, 10),
(3, 3, 'Office Chair', 'Ergonomic chair', 199.99, 15),
(4, 4, 'Rice Bag', '5kg basmati rice', 25.75, 50),
(5, 5, 'Face Wash', 'Skin care product', 12.99, 30);

INSERT INTO customer
(customer_id,customer_first_name,customer_last_name,customer_email,customer_password)
VALUES
(1, 'Ahmed', 'Ali', 'ahmed@example.com', 'pass123'),
(2, 'Sara', 'Hassan', 'sara@example.com', 'sara456'),
(3, 'Omar', 'Khaled', 'omar@example.com', 'omar789'),
(4, 'Mona', 'Youssef', 'mona@example.com', 'mona321'),
(5, 'Karim', 'Adel', 'karim@example.com', 'karim654');

INSERT INTO orders(order_id,customer_id,order_date,order_total_amount)
VALUES
(1, 1, '2026-05-01', 999.99),
(2, 2, '2026-05-02', 1299.50),
(3, 3, '2026-05-03', 199.99),
(4, 4, '2026-05-04', 25.75),
(5, 5, '2026-05-05', 12.99);

INSERT INTO order_details(order_detail_id, order_id, product_id, quantity, unit_price)
VALUES
(1, 1, 1, 1, 999.99),
(2, 2, 2, 1, 1299.50),
(3, 3, 3, 2, 199.99),
(4, 4, 4, 3, 25.75),
(5, 5, 5, 2, 12.99);
