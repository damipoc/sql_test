CREATE DATABASE IF NOT EXISTS gameshopdb;

USE gameshopdb;

CREATE TABLE IF NOT EXISTS customers (
customer_id INT NOT NULL AUTO_INCREMENT,
first_name VARCHAR(40) NOT NULL,
last_name VARCHAR(40) NOT NULL,
phone_number CHAR(11),
address VARCHAR(80),
email VARCHAR(40),
PRIMARY KEY (customer_id)
);

CREATE TABLE IF NOT EXISTS products (
product_id INT NOT NULL AUTO_INCREMENT,
title VARCHAR(40) NOT NULL,
price FLOAT NOT NULL,
stock INT NOT NULL,
PRIMARY KEY (product_id)
);

CREATE TABLE IF NOT EXISTS orders (
order_id INT NOT NULL AUTO_INCREMENT,
fk_customer_id INT NOT NULL,
fk_product_id INT NOT NULL,
order_date DATE NOT NULL,
PRIMARY KEY (order_id),
FOREIGN KEY (fk_customer_id) REFERENCES customers(customer_id),
FOREIGN KEY (fk_product_id) REFERENCES products(product_id)
);
