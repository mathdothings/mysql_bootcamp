SELECT 
    UPPER(CONCAT_WS(' ',
                    'my favorite author is ',
                    author_fname,
                    author_lname)) AS yell
FROM
    books
ORDER BY author_lname;