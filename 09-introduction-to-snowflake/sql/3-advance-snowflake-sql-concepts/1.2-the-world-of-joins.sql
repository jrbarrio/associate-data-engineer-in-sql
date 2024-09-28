SELECT COUNT(o.order_id) AS total_orders
FROM orders AS o
-- Use appropriate JOIN
LEFT JOIN order_details AS od
ON o.order_id = od.order_id

SELECT COUNT(o.order_id) AS total_orders,
        AVG(p.price) AS average_price,
        -- Calculate total revenue
        SUM(p.price * od.quantity) AS total_revenue	
FROM orders AS o
-- Use appropriate JOIN
LEFT JOIN order_details AS od
ON o.order_id = od.order_id
-- Use appropriate JOIN with pizzas table
RIGHT JOIN pizzas AS p
ON od.pizza_id = p.pizza_id

SELECT COUNT(o.order_id) AS total_orders,
        AVG(p.price) AS average_price,
        -- Calculate total revenue
        SUM(p.price * od.quantity) AS total_revenue,
        -- Get the name from pizza_type table
		pt.name AS pizza_name
FROM orders AS o
-- Use appropriate JOIN
LEFT JOIN order_details AS od
ON o.order_id = od.order_id
-- Use appropriate JOIN with pizzas table
RIGHT JOIN pizzas p
ON od.pizza_id = p.pizza_id
-- Natural join pizza_type table
NATURAL JOIN pizza_type AS pt
GROUP BY pt.name, pt.category
ORDER BY total_revenue desc, total_orders desc