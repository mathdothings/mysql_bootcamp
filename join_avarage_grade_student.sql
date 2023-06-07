SELECT 
    students.firstname, IFNULL(AVG(papers.grade), 0) AS average
FROM
    students
        LEFT JOIN
    papers ON students.id = papers.id
GROUP BY students.firstname
ORDER BY average DESC;