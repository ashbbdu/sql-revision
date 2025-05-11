-- UNION



SELECT order_id , order_date , "ACTIVE" AS Status 
FROM orders WHERE order_date >= '2019-01-01'
UNION
SELECT order_id , order_date , "ARCHIVED" AS Status 
FROM orders WHERE order_date <= '2019-01-01';



-- Exercise

use sql_store;


SELECT customer_id , first_name , points ,  "Bronze" AS Type 
FROM  customers WHERE points <= 2000
UNION
SELECT customer_id , first_name , points ,  "Silver" AS Type 
FROM  customers WHERE points BETWEEN 2001 AND 3000 
UNION
SELECT customer_id , first_name , points ,  "Gold" AS Type 
FROM  customers WHERE points > 3000  ORDER BY first_name;




SELECT customer_id , first_name , points ,  "Bronze" AS Type 
FROM  customers WHERE points <= 2000
UNION
SELECT customer_id , first_name , points ,  "Silver" AS Type 
FROM  customers WHERE points BETWEEN 2001 AND 3000 
UNION
SELECT customer_id , first_name , points ,  "Gold" AS Type 
FROM  customers WHERE points > 3000  ORDER BY first_name;











