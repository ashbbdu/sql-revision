use sql_invoicing;


SELECT client_id , SUM(invoice_total) AS total_sales
FROM invoices
GROUP BY client_id WITH ROLLUP;