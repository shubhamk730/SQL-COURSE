-- CROSS JOIN

-- SELECT * FROM CUSTOMERS, ORDERS;


-- INNER JOINS

SELECT *
FROM CUSTOMERS C
JOIN ORDERS O 
ON C.ID = O.CUSTOMER_ID;

SELECT FIRST_NAME, SUM(AMOUNT)
FROM CUSTOMERS C
JOIN ORDERS O 
ON C.ID = O.CUSTOMER_ID
group by C.ID;
 
-- LEFT JOIN -> SELECT EVERYTHING FROM LEFT
SELECT * 
FROM CUSTOMERS C
	LEFT JOIN ORDERS O
    ON C.ID = O.CUSTOMER_ID;
    

-- IFNULL(EXPRSN, RELACED_VALUE) -> IF EXPRESSION RESULTS IN NULL VALUE IS REPLACED BY REPLACED_VALUE
SELECT FIRST_NAME, IFNULL(SUM(AMOUNT), 0) AS MONEY_SPENT
FROM CUSTOMERS C
	LEFT JOIN ORDERS O 
    ON C.ID = O.CUSTOMER_ID
GROUP BY FIRST_NAME, LAST_NAME;
    
-- RIGHT JOIN -> SELECT EVERYTHING FROM RIGHT
SELECT 
    first_name, last_name, order_date, amount
FROM
    customers
        RIGHT JOIN
    orders ON customers.id = orders.customer_id;
    
    
-- ON DELETE CASCADE
CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50)
);
 
CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    amount DECIMAL(8 , 2 ),
    customer_id INT,
    FOREIGN KEY (customer_id)
        REFERENCES customers (id)
        ON DELETE CASCADE
);

