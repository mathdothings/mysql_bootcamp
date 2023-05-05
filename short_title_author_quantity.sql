SELECT 
    CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short title',
    CONCAT_WS(', ', author_lname, author_fname) AS author,
    CONCAT(stock_quantity, ' in stock') AS quantity
FROM
    books;