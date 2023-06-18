SELECT 
    genre, ROUND(AVG(rating), 2) AS avg_rating
FROM
    series
        INNER JOIN
    ratings ON series.id = ratings.series_id
GROUP BY genre;