SELECT 
    CONCAT_WS(' was released in ',
            title,
            released_year) AS blurb
FROM
    books;