SELECT 
    students.firstname,
    IFNULL(papers.title, 'MISSING'),
    IFNULL(papers.grade, 0)
FROM
    students
        LEFT JOIN
    papers ON students.id = papers.id;