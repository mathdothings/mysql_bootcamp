SELECT 
    students.firstname,
    IFNULL(AVG(papers.grade), 0),
    IF(AVG(papers.grade) >= 75,
        'PASSING',
        'FAILING') AS passing_status
FROM
    students
        LEFT JOIN
    papers ON students.id = papers.id
GROUP BY students.firstname
ORDER BY AVG(papers.grade) DESC;