

SELECT c.first_name "First Name", c.last_name "Last Name", c.email "Email", p.title "Item", o.order_date "Purchase Date"
FROM customers c
INNER JOIN orders o ON c.customer_id = o.fk_customer_id
INNER JOIN products p ON p.product_id = o.fk_product_id;