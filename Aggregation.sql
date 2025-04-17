-- Aggregate function

-- MAX()
-- MIN()
-- AVG()
-- SUM()
-- COUNT()


-- TODO : see how full join works



use sql_invoicing;

SELECT 
MAX(invoice_total) AS Highest ,
 MIN(invoice_total) AS Lowest , 
 AVG(invoice_total) AS Average ,
 SUM(invoice_total) AS Total,
 COUNT(invoice_total) AS Total_Invoices
  FROM invoices;



-- Exercise

SELECT 
"FIRST half" AS Date_Range , 
SUM(invoice_total),
SUM(payment_total) ,
 SUM(invoice_total - payment_total)   as what_we_expcet
FROM invoices WHERE due_date BETWEEN '2019-01-01' AND '2019-06-30'
UNION
SELECT 
"Second half" AS Date_Range , 
SUM(invoice_total),
SUM(payment_total) ,
 SUM(invoice_total - payment_total)     as what_we_expcet
FROM invoices WHERE due_date BETWEEN '2019-07-01' AND '2019-12-31'
UNION
SELECT
"Total" AS Date_Range , 
SUM(invoice_total),
SUM(payment_total) ,
  SUM(invoice_total - payment_total)    as what_we_expcet FROM invoices
 WHERE due_date 
 ;


SELECT * FROM invoices WHERE client_id = 2;
 



 SELECT c.name , i.client_id , SUM(i.payment_total) FROM clients c 
 JOIN invoices i
 USING (client_id) GROUP BY c.name 
 ORDER BY SUM(i.payment_total) DESC;