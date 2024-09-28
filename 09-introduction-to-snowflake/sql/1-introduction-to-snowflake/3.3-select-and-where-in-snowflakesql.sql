-- Count all pizza entries
SELECT COUNT(*) AS count_all_pizzas
FROM pizza_type

-- Count all pizza entries
SELECT COUNT(*) AS count_all_pizzas
FROM pizza_type
-- Apply filter on category for Classic pizza types
WHERE category = 'Classic'

-- Count all pizza entries
SELECT COUNT(*) AS count_all_pizzas
FROM pizza_type
-- Apply filter on category for Classic pizza types
WHERE category = 'Classic'
-- Additional condition to filter where name has Cheese in it
AND name LIKE '%Cheese%'