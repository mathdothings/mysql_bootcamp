INSERT INTO reviewers(name, lastname)
VALUES('Blue', 'Steele'), ('Wyatt', 'Earp');

INSERT INTO series(title, genre, released)
VALUES('Archer', 'Animation', 2009), ('Fargo', 'Drama', 2014);

INSERT INTO ratings(score, reviewers_id, series_id)
VALUES(5, 1, 2), (1, 2, 1), (4, 2, 2);

SELECT 
    CONCAT(reviewers.name, ' ', reviewers.lastname) AS fullname,
    series.title,
    ratings.score
FROM
    reviewers
        INNER JOIN
    ratings ON reviewers.id = ratings.reviewers_id
        INNER JOIN
    series ON series.id = ratings.series_id
ORDER BY score DESC;