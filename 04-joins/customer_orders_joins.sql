-- ============================================
-- SQL JOIN Practice
-- Customers & Orders
-- ============================================

-- Create Customers Table
CREATE TABLE customers (
    cust_id SERIAL PRIMARY KEY,
    cust_name VARCHAR(100) NOT NULL
);

-- Insert Customers
INSERT INTO customers (cust_name)
VALUES
    ('RAJU'),
    ('SHAM'),
    ('Baburoa'),
    ('Alex'),
    ('Paul');


-- Create Orders Table
CREATE TABLE orders (
    ord_id SERIAL PRIMARY KEY,
    ord_date DATE NOT NULL,
    price NUMERIC NOT NULL,
    cust_id INTEGER NOT NULL,

    FOREIGN KEY (cust_id)
    REFERENCES customers(cust_id)
);


-- Insert Orders
INSERT INTO orders (ord_date, cust_id, price)
VALUES
    ('2024-01-01', 1, 250.00),
    ('2024-01-15', 1, 300.00),
    ('2024-02-01', 2, 150.00),
    ('2024-03-01', 3, 450.00),
    ('2024-04-04', 2, 550.00);


-- View Customers
SELECT *
FROM customers;


-- View Orders
SELECT *
FROM orders;


-- RIGHT JOIN
-- Shows all customers, including customers
-- who have not placed any orders.

SELECT
    c.cust_name,
    o.ord_date,
    o.price
FROM orders o
RIGHT JOIN customers c
    ON c.cust_id = o.cust_id;


-- Equivalent LEFT JOIN
-- Keeps all customers because customers
-- is now on the LEFT side.

SELECT
    c.cust_name,
    o.ord_date,
    o.price
FROM customers c
LEFT JOIN orders o
    ON c.cust_id = o.cust_id;
