INSERT INTO customers 
(
    first_name,
    last_name,
    birth_date,
    phone,
    address,
    city,
    state,
    points
)
VALUES ( 
"Ashish" , 
"Srivastava" ,
 '1996-01-22' ,
'7007823127',
'Indira Nagar',
'Lucknow',
'UP',
100
   );

   


INSERT INTO shippers (name) VALUES (
    'Globelink Weststar Shipping , Dubai'
)

-- Inserting multiple rows/items into the row

    INSERT INTO shippers (name) VALUES (
        'Globelink Weststar Shipping , India'
    ),
    (    'Lavinstar Logistics Pvt Ltd , India'),
    (    "Vinworld America , USA");



-- inserting into multiple tables
 INSERT INTO orders (customer_id , order_date , status) VALUES
 (2 , '2019-01-02' , 1);

 SELECT LAST_INSERT_ID();

 INSERT INTO order_items 
 (order_id ,product_id , quantity , unit_price)
  VALUES 
 (LAST_INSERT_ID() , 1 ,  4  , 2.25);