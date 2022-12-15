SELECT DATABASE();


-- DISTINCT
-- SELECTS DISTINCT COMBINATION OF FNAME AND LNAME.
SELECT DISTINCT AUTHOR_FNAME, UTHOR_LNAME
FROM BOOKS
ORDER BY AUTHOR_FNAME;

-- ORDER BY
SELECT DISTINCT AUTHOR_FNAME, UTHOR_LNAME
FROM BOOKS
ORDER BY AUTHOR_FNAME;

-- ORDER BY SECOND COLUMN
-- SELECT DISTINCT AUTHOR_FNAME, UTHOR_LNAME
-- FROM BOOKS
-- ORDER BY 2;


-- limit
SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 0,5;

-- SKIP 0TH ROW (START INDEX, HOW MANY)
SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 1,5;


SELECT TITLE, PAGES FROM BOOKS
ORDER BY PAGES DESC
LIMIT 1;


SELECT CONCAT(TITLE, RELEASED_YEAR) AS SUMMARY
FROM BOOKS
ORDER BY RELEASED_YEAR DESC
LIMIT 3;

SELECT TITLE, AUTHOR_LNAME
FROM BOOKS
WHERE AUTHOR_LNAME LIKE "% %";