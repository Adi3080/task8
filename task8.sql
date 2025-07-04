--task8
DROP PROCEDURE IF EXISTS GetHighScorers;
-- Create a procedure that returns students with marks greater than input
CREATE PROCEDURE GetHighScorers(IN min_marks FLOAT)
LANGUAGE plpgsql
AS $$
BEGIN
    -- Execute a select query to list high scoring students
    SELECT s_name, department, marks
    FROM student
    WHERE marks > min_marks;
END;
$$;
Call GetHighScorers(75);


-- Create the function
CREATE FUNCTION GetGrade(m FLOAT) RETURNS VARCHAR
LANGUAGE plpgsql
AS $$
DECLARE
    grade VARCHAR(10);
BEGIN
    IF m >= 90 THEN
        grade := 'A+';
    ELSIF m >= 75 THEN
        grade := 'A';
    ELSIF m >= 60 THEN
        grade := 'B';
    ELSIF m >= 45 THEN
        grade := 'C';
    ELSE
        grade := 'F';
    END IF;

    RETURN grade;
END;
$$;


SELECT s_name, marks, GetGrade(marks) AS grade
FROM student;

select * from student;
