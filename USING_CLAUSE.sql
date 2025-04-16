use sql_store;

SELECT o.order_id , c.first_name , sh.name AS Shipper 
FROM orders o 
JOIN customers c
-- if the constraint of the camprision is same we can use USING Clause
-- ON o.customer_id = c.customer_id;
-- both the query will do the same thing    
USING (customer_id) 
LEFT JOIN shippers sh
USING (shipper_id)