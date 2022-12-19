

CREATE DATABASE SHOP;
USE SHOP;


DROP TABLE CUSTOMERS;
DROP TABLE ORDERS;

CREATE TABLE CUSTOMERS (
	ID INT PRIMARY KEY auto_increment,
    FIRST_NAME VARCHAR(100),
    LAST_NAME VARCHAR(100),
    EMAIL VARCHAR(50)
); 


CREATE TABLE ORDERS (
	ID INT PRIMARY KEY AUTO_INCREMENT,
    ORDER_DATE DATE,
    AMOUNT DECIMAL(8,2),
    CUSTOMER_ID INT,
    FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS(ID)
);


INSERT INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
       
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016-02-10', 99.99, 1),
       ('2017-11-11', 35.50, 1),
       ('2014-12-12', 800.67, 2),
       ('2015-01-03', 12.50, 2),
       ('1999-04-11', 450.25, 5);
       


SELECT * FROM CUSTOMERS;
SELECT * FROM ORDERS;

SELECT *
FROM CUSTOMERS
CROSS JOIN ORDERS;






