SELECT 
    CONCAT_WS(' - ', title, released_year) AS summary
FROM
    books
ORDER BY released_year DESC
LIMIT 3;