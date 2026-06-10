CREATE DATABASE manufacturing;

USE manufacturing;

SELECT *
FROM vendors
ORDER BY 'Total Bills' DESC;

SELECT Name,
       Total
FROM customers
ORDER BY 'Total' DESC;

DROP TABLE IF EXISTS sales;
DROP TABLE IF EXISTS purchases;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS vendors;
DROP TABLE IF EXISTS highest_selling;

SHOW COLUMNS FROM sales;
    
SELECT customer_name, total
FROM customers
ORDER BY total DESC;

SELECT vendor_name, total_bill
FROM vendors
ORDER BY total_bill DESC;


SELECT
    p.item,
    p.quantity_purchased,
    s.quantity_sold,
    (p.quantity_purchased - s.quantity_sold) AS balance_qty
FROM purchases p
JOIN sales s
ON p.item = s.item;


SELECT item, quantity_sold
FROM sales
ORDER BY quantity_sold DESC;