SELECT 
    reviewers.firstname, reviewers.lastname, ratings.rating
FROM
    reviewers
        INNER JOIN
    ratings ON reviewers.id = ratings.reviewers_id;