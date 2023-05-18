SELECT 
    title,
    author_lname,
    CASE
        WHEN title LIKE '%stories%' THEN 'Short Stories'
        WHEN
            title LIKE '%just kids%'
                OR title LIKE '%heartbreaking work%'
        THEN
            'Memoir'
        ELSE 'Novel'
    END AS TYPE
FROM
    books
ORDER BY TYPE;