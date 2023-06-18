CREATE VIEW rating_by_reviewer AS
    SELECT 
        series.title,
        ratings.rating,
        CONCAT_WS(' ',
                reviewers.firstname,
                reviewers.lastname) AS reviewer
    FROM
        series
            INNER JOIN
        ratings ON series.id = ratings.series_id
            INNER JOIN
        reviewers ON reviewers.id = ratings.reviewers_id
    ORDER BY series.title , ratings.rating DESC;
    
SELECT * FROM rating_by_reviewer;