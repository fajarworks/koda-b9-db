
SELECT product_name, price
FROM products
WHERE price > (
    SELECT AVG(price)
    from products
)

SELECT t1.customer_id 
FROM transactions t1
WHERE t1.amount >= (
    SELECT AVG(amount)
    FROM transactions t2
    WHERE t1.customer_id = t2.customer_id
);


-- Exercise 1

WITH total_sales AS (
    SELECT customer_id, product, price_per_unit * quantity as total_price_sale
    FROM SALES
)
SELECT customer_id, total_price_sale, product
FROM total_sales
WHERE product = 'Keyboard' AND total_price_sale >= 30;

WITH sold_only_once AS (
    SELECT product, COUNT(quantity) AS sold
    FROM sales
    GROUP BY product
)

-- Exercise 2
SELECT customer_id, product, quantity
FROM sales
WHERE product = (
    SELECT product
    FROM sold_only_once
    WHERE sold = 1
);


-- CTE
WITH total_sale as (
    SELECT p.name, p.id, SUM(s.quantity) as total_units
    FROM Sales s
    JOIN Products p ON s.product_id = p.id
    GROUP BY  p.id
)
SELECT ts.name, ts.total_units * p.price AS total_revenue
FROM total_sale ts
JOIN Products p ON ts.id = p.id
WHERE ts.total_units >= 7
GROUP BY ts.name, total_revenue;

-- Subquery
SELECT ts.name, ts.total_units * p.price AS total_revenue
FROM (
    SELECT p.id, p.name, SUM(s.quantity) as total_units
    FROM Sales s
    JOIN Products p ON s.product_id = p.id
    GROUP BY p.id
) ts
JOIN Products p ON ts.id = p.id
WHERE ts.total_units >= 7
GROUP BY ts.name, total_revenue;
