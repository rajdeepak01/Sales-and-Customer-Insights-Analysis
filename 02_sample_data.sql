-- Insert Data into Customers
INSERT INTO Customers (name, email, gender, age, location, created_at)
VALUES
('Alice Smith', 'alice@example.com', 'Female', 29, 'New York', '2022-01-15'),
('Bob Johnson', 'bob@example.com', 'Male', 35, 'California', '2022-03-22'),
('Charlie Brown', 'charlie@example.com', 'Male', 40, 'Texas', '2022-02-10'),
('Diana Prince', 'diana@example.com', 'Female', 27, 'Florida', '2022-05-08');

-- Insert Data into Products
INSERT INTO Products (product_name, category, price)
VALUES
('Laptop', 'Electronics', 1000.00),
('Smartphone', 'Electronics', 700.00),
('Headphones', 'Accessories', 150.00),
('Monitor', 'Electronics', 300.00);

-- Insert Data into Orders
INSERT INTO Orders (customer_id, order_date, order_amount, payment_method, status)
VALUES
(1, '2022-06-15', 1700.00, 'Credit Card', 'Completed'),
(2, '2022-06-20', 1150.00, 'PayPal', 'Completed'),
(3, '2022-06-25', 150.00, 'Credit Card', 'Completed'),
(4, '2022-07-10', 1300.00, 'Credit Card', 'Completed');

-- Insert Data into OrderDetails
INSERT INTO OrderDetails (order_id, product_id, quantity)
VALUES
(1, 1, 1),  -- Laptop
(1, 2, 1),  -- Smartphone
(2, 1, 1),  -- Laptop
(2, 4, 1),  -- Monitor
(3, 3, 1),  -- Headphones
(4, 1, 1),  -- Laptop
(4, 4, 1);  -- Monitor
