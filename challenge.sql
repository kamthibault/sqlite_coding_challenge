-- Task 1 --
SELECT *
FROM customers
customers.first_name || ' ' || AND customers.last_name,
SUM(order_items.quantity * order_items.unit_price) AS total_spend
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
JOIN order_items ON orders.order_id =  order_items.order_id
GROUP BY customers.customer_id
ORDER BY total_spend DESC
LIMIT 5;
