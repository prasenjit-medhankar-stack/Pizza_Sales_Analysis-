-- CREATING TABLE PIZZA SALES
DROP TABLE IF EXISTS pizza_sales;

CREATE TABLE pizza_sales(
	pizza_id int,
	order_id int,
	pizza_name_id varchar(50),
	quantity int,
	order_date	date,
	order_time	time,
	unit_price	float,
	total_price	float,
	pizza_size	varchar(50),
	pizza_category	varchar(50),
	pizza_ingredients	varchar(250),
	pizza_name varchar(50)
);
-- 1.Calculate the total revenue generated from all pizza sales.

SELECT 
    SUM(total_price) AS Total_Revenue
FROM pizza_sales;



-- 2.Find the average amount spent per order.

SELECT 
    (SUM(total_price) / 
	COUNT(DISTINCT order_id)) AS Avg_Order_Value
FROM pizza_sales;



-- 3.Calculate the total number of pizzas sold.

SELECT 
    SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales;


-- 4. Problem Statement:
-- Find the total number of customer orders.

SELECT 
    COUNT(DISTINCT order_id)AS Total_Orders
FROM pizza_sales;


-- 5. Problem Statement:
-- Calculate the average number of pizzas ordered per order.

SELECT 
    CAST(
        CAST(SUM(quantity) AS DECIMAL(10,2)) 
        / 
        CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) 
    AS DECIMAL(10,2)) AS Avg_Pizzas_Per_Order
FROM pizza_sales;


-- 6. Problem Statement:
-- Find the daily trend of total orders.

SELECT 
    TO_CHAR(order_date,'Day') AS order_day,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY order_day
order by total_orders desc;


-- 7. Problem Statement:
-- Analyze monthly trend for total orders.

SELECT 
    TO_CHAR(order_date,'Month') AS Month_Name,
    COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY Month_name
ORDER BY Total_Orders DESC;


-- 8. Problem Statement:
-- Calculate percentage contribution of each pizza category to total revenue.

SELECT 
    pizza_category,
    CAST(SUM(total_price) AS DECIMAL(10,2)) AS total_revenue,

    CAST(
        SUM(total_price) * 100 
        / 
        (SELECT SUM(total_price) FROM pizza_sales)
    AS DECIMAL(10,2)) AS PCT

FROM pizza_sales
GROUP BY pizza_category;


-- 9. Problem Statement:
-- Calculate percentage contribution of each pizza size to total revenue.

SELECT 
    pizza_size,
    CAST(SUM(total_price) AS DECIMAL(10,2)) AS total_revenue,

    CAST(
        SUM(total_price) * 100 
        / 
        (SELECT SUM(total_price) FROM pizza_sales)
    AS DECIMAL(10,2)) AS PCT

FROM pizza_sales
GROUP BY pizza_size
ORDER BY pizza_size;


-- 10. Problem Statement:
-- Find total quantity of pizzas sold for each pizza category in February.

SELECT 
    pizza_category,
    SUM(quantity) AS Total_Quantity_Sold
FROM pizza_sales
WHERE EXTRACT(MONTH FROM order_date) = 2
GROUP BY pizza_category
ORDER BY Total_Quantity_Sold DESC;


-- 11. Problem Statement:
-- Identify top 5 pizzas generating highest revenue.

SELECT 
    pizza_name,
    SUM(total_price) AS Total_Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue DESC limit 5;


-- 12. Problem Statement:
-- Find bottom 5 pizzas generating lowest revenue.

SELECT
    pizza_name,
    SUM(total_price) AS Total_Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue ASC
limit 5;


-- 13. Problem Statement:
-- Find top 5 pizzas sold in highest quantities.

SELECT 
    pizza_name,
    SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold DESC
limit 5;


-- 14. Problem Statement:
-- Find bottom 5 pizzas sold in lowest quantities.

SELECT
    pizza_name,
    SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold ASC
limit 5;


-- 15. Problem Statement:
-- Find top 5 pizzas that appeared in highest number of orders.

SELECT
    pizza_name,
    COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders DESC
limit 5;

-- 16. Problem Statement:
-- Find bottom 5 pizzas that appeared in lowest number of orders.

SELECT 
    pizza_name,
    COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders ASC
limit 5;


-- 17. Problem Statement:
-- Find bottom pizzas only for Classic pizza category.

SELECT
    pizza_name,
    COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
WHERE pizza_category = 'Classic'
GROUP BY pizza_name
ORDER BY Total_Orders ASC
limit 5;

-- END OF PROJECT
















