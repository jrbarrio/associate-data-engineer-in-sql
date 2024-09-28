SELECT 
    pt.category,
	-- Calculate total_revenue 
    SUM(p.price * od.quantity) total_revenue
FROM order_details AS od
-- NATURAL JOIN all tables
NATURAL JOIN pizzas AS p 
NATURAL JOIN pizza_type AS pt
-- GROUP the records by category from pizza_type table
GROUP BY pt.category
-- ORDER by total_revenue and limit the records
ORDER BY total_revenue DESC
LIMIT 1;