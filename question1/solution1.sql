-- database: MySQL
WITH student_grades AS (
    SELECT
        s.ID,
        s.Name,
        s.Marks,
        g.Grade
    FROM Students s
    JOIN Grades g
        ON s.Marks BETWEEN g.Min_Mark AND g.Max_Mark -- range join
)


SELECT
    -- case when
    CASE
        WHEN Grade < 8 THEN NULL
        ELSE Name
    END AS Name,
    Grade,
    Marks
FROM student_grades
ORDER BY
    Grade DESC,
    Name,  
    Marks;
