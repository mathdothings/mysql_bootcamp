SELECT 
    students.firstname, papers.title, papers.grade
FROM
    students
        LEFT JOIN
    papers ON students.id = papers.id;