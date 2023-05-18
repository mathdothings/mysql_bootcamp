SELECT 
    author_lname, author_fname,
    CASE
        WHEN COUNT(title) = 1 THEN '1 book'
        ELSE CONCAT(COUNT(*), ' books')
    END AS COUNT
FROM
    books
GROUP BY author_lname , author_fname;