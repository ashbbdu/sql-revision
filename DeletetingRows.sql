use sql_invoicing;

DELETE FROM invoices
WHERE client_id = (
    SELECT * FROM clients WHERE name = 'Myworks'
);



 SELECT * FROM clients WHERE name = 'Myworks'