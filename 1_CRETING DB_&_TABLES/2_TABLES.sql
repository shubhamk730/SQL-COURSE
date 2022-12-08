CREATE DATABASE IF NOT EXISTS pet_shop;

USE pet_shop;


CREATE TABLE cats (
	name VARCHAR(50),
    age INT
);

CREATE TABLE dogs (
	name VARCHAR(50),
    breed VARCHAR(50),
    age INT
);


SHOW TABLES;

SHOW COLUMNS FROM cats;



-- BOTH ARE SAME 
SHOW COLUMNS FROM DOGS;

DESC dogs;

DROP TABLE cats;




-- EXERCISE 

CREATE TABLE IF NOT EXISTS pastries (
	name VARCHAR(100),
    quantity INT
);

DESC pastries;

DROP TABLE IF EXISTS pastries;










