UPDATE invoices
SET payment_total = 10 , payment_date = '2019-03-01'
WHERE invoice_id = 1;




-- Updating Multiple Records

UPDATE invoices
SET payment_total = invoice_total * 0.5 , payment_date = due_date
WHERE client_id = 3;

SELECT   invoice_total , payment_total , due_date ,  payment_date FROM
invoices
WHERE client_id = 3;



SELECT   invoice_total , payment_total , due_date ,  payment_date FROM
invoices
WHERE client_id IN (3 , 4);


-- using sub queries
UPDATE invoices
SET payment_total = invoice_total * 0.5 , payment_date = due_date
WHERE client_id IN (
    SELECT client_id 
    FROM client_id 
    WHERE state IN ('CA' , 'NY')
);
   
-- WHERE client_id = (
--     SELECT client_id 
--     FROM client_id 
--     WHERE name = 'Myworks'
-- );


-- Exercise
use sql_store;

UPDATE customers 
SET points = points + 50
WHERE birth_date < '1990-01-01';


