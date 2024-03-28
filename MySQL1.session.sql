SELECT customer_id 
FROM customer 
RIGHT OUTER JOIN orders ON customer.id = orders.customer_id;
