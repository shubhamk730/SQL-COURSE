-- UNIQUE
DROP TABLE CONTACTS;

CREATE TABLE IF NOT EXISTS CONTACTS (
	NAME VARCHAR(255) ,
    CONTACT VARCHAR(14) UNIQUE NOT NULL
);

INSERT INTO CONTACTS(NAME, CONTACT) VALUES("SHUBHAM", 9953534843);

-- CHECK
CREATE TABLE users (
	username VARCHAR(20) NOT NULL,
    age INT CHECK (age > 0)
);
 
CREATE TABLE palindromes (
  word VARCHAR(100) CHECK(REVERSE(word) = word)
);



CREATE TABLE IF NOT EXISTS USERS (
	NAME VARCHAR(200),
    AGE INT,
    CONSTRAINT check_age CHECK(AGE > 18)
);

INSERT INTO USERS (NAME, AGE) VALUES ('SHUBHAM', 25);
INSERT INTO USERS (NAME, AGE) VALUES ('SHUBHAM', 5);



-- MUTLTIPLE COLUMN CONSTRAINTS
CREATE TABLE companies (
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    CONSTRAINT name_address UNIQUE (name , address)
);
 
CREATE TABLE houses (
  purchase_price INT NOT NULL,
  sale_price INT NOT NULL,
  CONSTRAINT sprice_gt_pprice CHECK(sale_price >= purchase_price)
);






