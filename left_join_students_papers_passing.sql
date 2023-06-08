SELECT 
    students.firstname,
    IFNULL(AVG(papers.grade), 0),
    CASE
        WHEN AVG(papers.grade) >= 75 THEN 'PASSING'
        ELSE 'FAILING'
    END AS passing_status
FROM
    students
        LEFT JOIN
    papers ON students.id = papers.id
GROUP BY students.firstname
ORDER BY AVG(papers.grade) DESC;