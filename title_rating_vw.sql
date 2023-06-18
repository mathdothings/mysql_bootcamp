CREATE VIEW title_rating AS
    SELECT 
        title, rating
    FROM
        series
            INNER JOIN
        ratings ON series.id = ratings.series_id;
    
SELECT 
    title, CEIL(AVG(rating)) AS average
FROM
    title_rating
GROUP BY title
ORDER BY average DESC;