-- 1. Total Sales by Month
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month, 
    SUM(order_amount) AS total_sales
FROM Orders
GROUP BY month
ORDER BY month;

-- 2. Top 3 Customers by Spending
SELECT 
    c.name, 
    c.email, 
    SUM(o.order_amount) AS total_spent
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_id
ORDER BY total_spent DESC
LIMIT 3;

-- 3. Best-Selling Product Categories
SELECT 
    p.category, 
    SUM(od.quantity) AS total_quantity
FROM OrderDetails od
JOIN Products p ON od.product_id = p.product_id
GROUP BY p.category
ORDER BY total_quantity DESC;

-- 4. Customer Retention: Repeat Customers
SELECT 
    customer_id, 
    COUNT(DISTINCT DATE_FORMAT(order_date, '%Y-%m')) AS active_months
FROM Orders
GROUP BY customer_id
HAVING active_months > 1;

-- 5. Average Order Value (AOV)
SELECT 
    AVG(order_amount) AS average_order_value
FROM Orders;

-- 6. Revenue Contribution by Product
SELECT 
    p.product_name, 
    SUM(od.quantity * p.price) AS revenue_generated
FROM OrderDetails od
JOIN Products p ON od.product_id = p.product_id
GROUP BY p.product_id
ORDER BY revenue_generated DESC;
