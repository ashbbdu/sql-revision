SELF OUTER JOIN


use sql_hr;


SELECT e.employee_id , e.first_name , e.job_title ,
 m.first_name 
 AS Manager FROM employees e 
 LEFT JOIN employees m  on e.reports_to = m.employee_id;