SELECT 
    series.title, AVG(ratings.rating) AS avg_rating
FROM
    series
        INNER JOIN
    ratings ON series.id = ratings.series_id
GROUP BY title
ORDER BY avg_rating;