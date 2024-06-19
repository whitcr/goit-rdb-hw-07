SELECT 
    id,
    date,
    EXTRACT(YEAR FROM date) AS year,
    EXTRACT(MONTH FROM date) AS month,
    EXTRACT(DAY FROM date) AS day
FROM 
    orders;

SELECT 
    id,
    date,
    DATE_ADD(date, INTERVAL 1 DAY) AS date_plus
FROM 
    orders;

SELECT 
    id,
    date,
    UNIX_TIMESTAMP(date) AS timestamp
FROM 
    orders;


SELECT 
    COUNT(*) AS order_count
FROM 
    orders
WHERE 
    date BETWEEN '1996-07-10 00:00:00' AND '1996-10-08 00:00:00';


SELECT 
    id,
    date,
    JSON_OBJECT('id', id, 'date', date) AS json_object
FROM 
    orders;
