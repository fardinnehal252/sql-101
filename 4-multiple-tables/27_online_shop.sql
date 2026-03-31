-- Online Shop 🛍️
-- Codédex

-- Write code below 💖

select * from orders;
select * from products;
select * from customers;


select p.name, COUNT(o.item_id) as total_sold
from products as p
JOIN orders as o 
ON o.item_id = p.id
GROUP BY p.name 
ORDER BY total_sold DESC;


SELECT c.name AS customer_name, p.name AS product_name, o.date
FROM customers AS c
JOIN orders AS o ON c.id = o.customer_id
JOIN products AS p ON o.item_id = p.id
ORDER BY c.name;


SELECT o.date, SUM(p.price) AS daily_revenue
FROM orders AS o
JOIN products AS p ON o.item_id = p.id
GROUP BY o.date
ORDER BY daily_revenue DESC;
