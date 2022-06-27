SET SQL_SAFE_UPDATES = 0;

ALTER TABLE customers AUTO_INCREMENT = 1;
ALTER TABLE products AUTO_INCREMENT = 1;
ALTER TABLE orders AUTO_INCREMENT = 1;


INSERT INTO customers (first_name, last_name, phone_number, email, address) VALUES ("John", "Smith", "0712345678", "smithjohn@sql.com", "13 Street, City, PO ST3D");
INSERT INTO customers (first_name, last_name, phone_number, email, address) VALUES ("James", "McLean", "0712345679", "Jamesmclean@sql.com", "14 Street, City, PO ST3D");
INSERT INTO customers (first_name, last_name, phone_number, email, address) VALUES ("Sharon", "Magee", "0712345670", "sharonmagee123@sql.com", "15 Street, City, PO ST3D");
INSERT INTO customers (first_name, last_name, phone_number, email, address) VALUES ("Carrie", "Briese", "0712345671", "carriebriesel@sql.com", "16 Street, City, PO ST3D");
INSERT INTO customers (first_name, last_name, phone_number, email, address) VALUES ("Noah", "Womack", "0712345672", "noah@sql.com", "10 Street, City, PO ST3D");

INSERT INTO products (title, price, stock) VALUES ("Doom", 29.99, 10);
INSERT INTO products (title, price, stock) VALUES ("Elder Ring", 50, 5);
INSERT INTO products (title, price, stock) VALUES ("Apex Legends", 0, 999);
INSERT INTO products (title, price, stock) VALUES ("PS5", 499.99, 0);
INSERT INTO products (title, price, stock) VALUES ("Skyrim", 5, 999);

INSERT INTO orders (fk_customer_id, fk_product_id, order_date) VALUES (1, 2, "2022-06-27");
INSERT INTO orders (fk_customer_id, fk_product_id, order_date) VALUES (2, 5, "2022-06-25");
INSERT INTO orders (fk_customer_id, fk_product_id, order_date) VALUES (3, 3, "2021-03-30");
INSERT INTO orders (fk_customer_id, fk_product_id, order_date) VALUES (4, 1, "2022-04-20");
INSERT INTO orders (fk_customer_id, fk_product_id, order_date) VALUES (5, 2, "2022-05-02");

SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;

UPDATE customers SET email = "mcleanjames@sql.com" WHERE customer_id = 2;
UPDATE customers SET phone_number = "0712345677" WHERE customer_id = 1;
UPDATE products SET stock = 1 WHERE product_id = 4;
UPDATE products SET price = 4.99 WHERE product_id = 5;
UPDATE orders SET fk_product_id = 4 WHERE  order_id = 5;
UPDATE orders SET order_date = "2022-06-27" WHERE order_id = 5;

SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;

DELETE FROM orders WHERE fk_customer_id = 1;
DELETE FROM orders WHERE fk_product_id = 5;
DELETE FROM customers WHERE first_name = "John";
DELETE FROM customers WHERE customer_id = 2;
DELETE FROM products WHERE title = "Elder Ring"; 
DELETE FROM products WHERE product_id = 5;

SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;

DELETE FROM orders WHERE order_id;
DELETE FROM products WHERE product_id;
DELETE FROM customers WHERE customer_id;

SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;



