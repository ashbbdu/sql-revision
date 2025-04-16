OUTER JOINS



SELECT c.customer_id ,
 c.first_name , 
 o.order_id ,
 sh.name AS Shipper_Name
 FROM customers c LEFT JOIN
orders o ON c.customer_id = o.customer_id 
LEFT JOIN shippers sh ON sh.shipper_id = o.shipper_id;



-- outer joins on two table

-- Exercise

SELECT * FROM products;

SELECT p.product_id , p.name , oi.quantity FROM products p LEFT JOIN order_items oi ON
p.product_id = oi.product_id; 

-- OR


SELECT p.product_id , p.name , oi.quantity FROM order_items oi RIGHT JOIN  products p ON
p.product_id = oi.product_id; 


-- Outer join on three tables

SELECT o.order_date , o.order_id , c.first_name , sh.name AS Shipper_Name , os.name AS Status FROM 
customers c  JOIN orders o ON
c.customer_id = o.customer_id 
LEFT JOIN shippers sh on  sh.shipper_id = o.shipper_id 
 JOIN 
order_statuses os ON os.order_status_id = o.status ORDER BY o.order_date DESC;