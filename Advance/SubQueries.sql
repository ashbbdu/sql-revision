-- Find products that are more expensive than Lettuce (id = 3)

use sql_store;


SELECT * FROM products WHERE unit_price > (
    SELECT unit_price FROM products WHERE product_id = 3
);



SELECT * FROM products WHERE unit_price >  3
;




use sql_hr;


-- was checking self join question
SELECT e.employee_id , e.first_name , m.first_name FROM 
employees e  LEFT JOIN  employees m
ON e.reports_to = m.employee_id;



-- Excersise
-- In sql_hr database : 
-- Find the employees who earn more than average


SELECT SUM(salary) / COUNT(salary) as Avearage FROM employees;

SELECT employee_id , employee.first_name , employee.salary FROM employees 
WHERE salary > (
    SELECT SUM(salary) / COUNT(salary) as Avearage FROM employees
);