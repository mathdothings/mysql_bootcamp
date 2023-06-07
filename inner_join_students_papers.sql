SELECT 
    students.firstname, papers.title, papers.grade
FROM
    students
        INNER JOIN
    papers ON students.id = papers.id
ORDER BY grade DESC;