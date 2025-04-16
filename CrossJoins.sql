
-- Use to join all records of the first table and the second table
-- no need to mention the condition

SELECT c.first_name AS Customer , p.name AS Product FROM customers c 
CROSS JOIN products p ORDER BY c.first_name;


SELECT p.name AS Product , sh.name Shipper FROM products p  
CROSS JOIN shippers sh ORDER BY p.name;


-- OR the query can also be written as the above one is implicit and the below one is explicit

SELECT p.name AS Product , sh.name Shipper FROM products p  ,
shippers sh ORDER BY p.name;