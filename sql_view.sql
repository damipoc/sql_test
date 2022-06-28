
CREATE VIEW result_of_encapsulated_query AS SELECT fk_customer_id FROM orders WHERE order_id=4;

SELECT * from result_of_encapsulated_query;