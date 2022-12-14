use book_shop;

select * from books;

SELECT CONCAT(AUTHOR_FNAME, ' ',AUTHOR_LNAME) AS full_name
FROM BOOKS;

SELECT CONCAT_WS('-', AUTHOR_FNAME,AUTHOR_LNAME) AS full_name
FROM BOOKS;

-- SUBSTRING

SELECT SUBSTRING('Hello World', 1, 4);
-- STRING, START INDEX, HOW MANY CHARACTERS;
 
SELECT SUBSTRING('Hello World', 7);
 
SELECT SUBSTRING('Hello World', -3);
 
SELECT SUBSTRING(title, 1, 10) AS 'short title' FROM books;
 
SELECT SUBSTR(title, 1, 10) AS 'short title' FROM books;



-- REPLACE
SELECT REPLACE('Hello World', 'Hell', '%$#@');
 
SELECT REPLACE('Hello World', 'l', '7');
 
SELECT REPLACE('Hello World', 'o', '07');
 
SELECT REPLACE('HellO World', 'o', '*');






