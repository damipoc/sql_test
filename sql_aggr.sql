SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;

SELECT COUNT(customer_id) FROM customers;

SELECT SUM(stock) FROM products;

SELECT SUM(price) FROM products;

SELECT MIN(price) FROM products;

SELECT MAX(price) FROM products;

SELECT AVG(stock) FROM products;

SELECT fk_customer_id as "Customer" , fk_product_id as "Game" , COUNT(*) as "Amount" FROM orders GROUP BY fk_customer_id;