-- having clause
-- USED TO FILTER RESULTS AFTER GROUPING

SELECT 
    title, 
    AVG(rating),
    COUNT(rating) AS review_count
FROM full_reviews 
GROUP BY title HAVING COUNT(rating) > 1;