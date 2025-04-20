-- Lecture 45

-- Find the products which are never ordered

use sql_store;


SELECT * FROM products WHERE product_id NOT IN (
SELECT DISTINCT product_id FROM order_items
);


-- In sql invoicing table find the clients without invoices

use sql_invoicing;


SELECT * FROM clients WHERE client_id NOT IN (
    SELECT DISTINCT client_id FROM invoices
);