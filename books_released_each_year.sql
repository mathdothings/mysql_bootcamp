SELECT
	released_year, COUNT(DISTINCT title) AS total_per_year
FROM
	books
GROUP BY released_year;