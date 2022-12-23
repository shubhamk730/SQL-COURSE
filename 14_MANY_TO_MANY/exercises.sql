-- show title and its rating for every rating in reviews table

select title, rating
from series s
join reviews r
	on s.id = r.series_id
order by title, rating; 

-- average rating for every series
select title, ROUND(avg(rating), 2) as average_rating
from series s
join reviews r
	on s.id = r.series_id
group by title
order by average_rating; 


-- SHOW FIRST NAME, LAST NAME, RATING OF EVERY REVIEWER
SELECT FIRST_NAME, LAST_NAME, RATING
FROM REVIEWERS R
JOIN REVIEWS RS
	ON R.ID = RS.REVIEWER_ID;
    
-- SELECT SHOWS WITH NO REVIEWS

-- MY SOLUTION
SELECT TITLE 
FROM SERIES 
WHERE ID NOT IN ( SELECT DISTINCT (SERIES_ID) FROM REVIEWS);



-- GIVEN SOLUTION
SELECT TITLE
FROM SERIES
LEFT JOIN REVIEWS 
	ON SERIES.ID = REVIEWS.SERIES_ID
WHERE RATING IS NULL;


SELECT 
    title AS unreviewed_series
FROM
    reviews
        RIGHT JOIN
    series ON series.id = reviews.series_id
WHERE
    rating IS NULL;

-- AVERAGE RATING OF EVERY GENRE
SELECT GENRE, AVG(RATING)
FROM SERIES S
JOIN REVIEWS R
	ON R.SERIES_ID = S.ID
GROUP BY GENRE;


-- FIND COUNT OF REVIEWS BY EACH REVIEWER, MAX, MIN, AVG OF ITS REVIEWS AND ITS STATUS
SELECT first_name, last_name, COUNT(RATING), IFNULL(MAX(RATING), 0) AS MAX, IFNULL(MIN(RATING),0) AS MIN, ROUND(IFNULL(AVG(RATING),0), 2) AS AVG,
	CASE
		WHEN COUNT(RATING) > 9 THEN 'POWER-USER'
        WHEN COUNT(RATING) > 0 THEN 'ACTIVE'
        ELSE 'INACTIVE'
	END AS STATUS
FROM REVIEWERS RS
LEFT JOIN REVIEWS R
	ON RS.ID = R.REVIEWER_ID
GROUP BY first_name, last_name;

SELECT first_name, last_name, COUNT(RATING), IFNULL(MAX(RATING), 0) AS MAX, IFNULL(MIN(RATING),0) AS MIN, ROUND(IFNULL(AVG(RATING),0), 2) AS AVG,
	IF(COUNT(RATING) > 0,'ACTIVE','INACTIVE') AS STATUS
FROM REVIEWERS RS
LEFT JOIN REVIEWS R
	ON RS.ID = R.REVIEWER_ID
GROUP BY first_name, last_name;

-- SHOW TITLE RATING, REVIEWER

SELECT TITLE , RATING, FIRST_NAME
FROM SERIES S
LEFT JOIN REVIEWS R
	ON S.ID = R.SERIES_ID
	JOIN REVIEWERS RS
		ON R.REVIEWER_ID = RS.ID
ORDER BY TITLE;

SELECT 
    title,
    rating,
    CONCAT(first_name, ' ', last_name) AS reviewer
FROM
    reviews
        INNER JOIN
    series ON reviews.series_id = series.id
        INNER JOIN
    reviewers ON reviews.reviewer_id = reviewers.id;
 
 
 
SELECT 
    title,
    rating,
    CONCAT(first_name, ' ', last_name) AS reviewer
FROM
    series
        INNER JOIN
    reviews ON reviews.series_id = series.id
        INNER JOIN
    reviewers ON reviews.reviewer_id = reviewers.id;
 
 
 
SELECT 
    title,
    rating,
    CONCAT(first_name, ' ', last_name) AS reviewer
FROM
    reviewers
        INNER JOIN
    reviews ON reviews.reviewer_id = reviewers.id
        INNER JOIN
    series ON reviews.series_id = series.id;
    
