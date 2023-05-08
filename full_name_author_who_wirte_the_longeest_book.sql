SELECT 
    CONCAT_WS(' ', author_fname, author_lname) AS fullname,
    pages
FROM
    books
ORDER BY pages DESC
LIMIT 1;