CREATE VIEW unreviewed_series AS
SELECT 
    title AS unreviewed_series
FROM
    series
        LEFT JOIN
    ratings ON series.id = ratings.series_id
WHERE
    ratings.rating IS NULL;

SELECT * FROM unreviewed_series;