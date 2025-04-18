SELECT client_id , SUM(invoice_total) AS total_sales
FROM invoices
-- WHERE SUM(invoice_total) > 500 -- this line is not working here
GROUP BY client_id
HAVING total_sales > 500;

-- lets suppose we want to  include the clients with more than $500 sales
-- having clause works after the grouping is done




SELECT client_id , SUM(invoice_total) AS total_sales ,
COUNT(*) AS total_invoices
FROM invoices
-- WHERE SUM(invoice_total) > 500 -- this line is not working here
GROUP BY client_id
HAVING total_sales > 500 AND total_invoices > 5;




-- Exercise

use sql_store;

-- SELECT 
-- c.first_name , 
-- c.city , 
-- c.state , 
-- (oi.unit_price  * oi.quantity) as total_spend 
-- FROM 
-- customers c JOIN
-- orders o USING(customer_id) JOIN
-- order_items oi USING (order_id)
-- --  WHERE c.state = "VA"
-- -- GROUP BY c.first_name , c.city , c.state
-- ; 

SELECT 
c.first_name , 
c.city , 
c.state , 
SUM(oi.unit_price  * oi.quantity) AS total_spend 
FROM 
customers c JOIN
orders o USING(customer_id) JOIN
order_items oi USING (order_id)
 WHERE c.state = "VA" 
GROUP BY c.first_name , c.city , c.state
; 