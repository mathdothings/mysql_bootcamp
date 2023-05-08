SELECT 
    released_year AS year,
    COUNT(title) AS '# books',
    AVG(pages) AS 'avg pages'
FROM
    books
GROUP BY released_year
ORDER BY released_year ASC;