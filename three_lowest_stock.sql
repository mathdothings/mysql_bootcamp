SELECT 
    title, released_year, stock_quantity
FROM
    books
ORDER BY stock_quantity, title ASC
LIMIT 3;