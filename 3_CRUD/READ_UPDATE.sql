SELECT NAME, AGE, BREED FROM cats;


-- WHERE
SELECT NAME, AGE 
FROM cats
WHERE AGE = 4;

SELECT NAME, AGE 
FROM CATS
WHERE BREED = 'TABBY';

SELECT NAME AS CAT_NAME, CAT_ID AS ID, AGE AS YRS_OLD 
FROM CATS
WHERE CAT_ID = AGE;

-- UPDATE
-- INSERT INTO TABLE VALUES() -> INSERT INTO IS A PAIR
-- UPDATE TABLE SET ROW = '' WHERE ...; -> UPDATE SET IS A PAIR

UPDATE cats 
SET age = 14
WHERE name = 'misty';


-- Exercise
UPDATE cats
SET name = 'Jack'
WHERE name = 'Jackson';

UPDATE cats
SET breed = 'British Shorthair'
WHERE name = 'Ringo';


UPDATE cats 
SET age = 12
WHERE breed = 'Maine Coon';


select * from cats; 

SELECT LAST_INSERT_ID();



-- DELETE

DELETE FROM cats
WHERE name = 'Egg';

-- REMOVE EVERYTHING
-- DELETE FROM CATS;
 
