
CREATE TABLE orders_archived AS
SELECT * FROM orders;


SELECT * FROM orders_archived;



-- Exercise

use sql_invoicing;


CREATE TABLE invoice_archived AS
SELECT i.invoice_id ,
i.number , 
c.name,
i.invoice_total,
i.payment_total,
i.invoice_date,
i.payment_date,
i.due_date
 FROM clients c JOIN invoices i 
USING (client_id) WHERE i.payment_date IS NOT NULL;


SELECT * FROM invoice_archived;