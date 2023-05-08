SELECT 
    author_fname AS firstname, author_lname AS lastname,
    CEIL(AVG(released_year)) AS average_release_year
FROM
    books
GROUP BY author_fname , author_lname;