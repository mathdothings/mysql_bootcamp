CREATE VIEW title_rating AS
	SELECT title, rating FROM series
	INNER JOIN ratings
	ON series.id = ratings.series_id;
    
SELECT * FROM title_rating;