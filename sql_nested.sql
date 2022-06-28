
SELECT customer_id, first_name, address FROM customers WHERE customer_id=(
    SELECT fk_customer_id FROM orders WHERE order_id=2
);


SELECT * FROM products WHERE price = (
	SELECT MAX(price) from products
);

SELECT first_name AS "First Name", last_name as "Last Name", email as "Email" FROM customers WHERE customer_id IN (
	SELECT fk_customer_id FROM orders
); 