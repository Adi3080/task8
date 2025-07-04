# task8
In this task, I explored the concept of reusable SQL blocks using stored procedures and functions in PostgreSQL. 
I created a function called GetGrade that takes a student's marks as input and returns a grade based on predefined conditions (A+, A, B, C, or F). 
This helped me understand how conditional logic can be applied within a SQL function. 
Additionally, I implemented a table-returning function named GetHighScorers, which accepts a minimum mark as input and returns a list of students whose marks are greater than that value.
This function made use of the RETURNS TABLE clause and the RETURN QUERY statement to output multiple rows, similar to how we retrieve data using a SELECT query. 

Through this task, I gained practical experience in writing PL/pgSQL functions, handling parameters, and returning structured result sets — all of which are essential for building advanced database applications.
