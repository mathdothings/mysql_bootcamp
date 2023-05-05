SELECT 
    UPPER(CONCAT_WS(' ', author_fname, author_lname)) AS 'full name in caps'
FROM
    books;