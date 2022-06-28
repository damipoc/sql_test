SELECT first_name, email FROM customers;

SELECT * FROM products WHERE stock > 5;

SELECT order_date FROM orders WHERE fk_product_id = 2;

SELECT * FROM customers WHERE first_name LIKE "J%";

SELECT first_name as "First Name", last_name as "Last Name", email as "Email", phone_number as "Phone Number", address as "Address" FROM customers;

SELECT * FROM customers WHERE address LIKE "%City%";

SELECT * FROM customers WHERE first_name NOT LIKE "J%";