/* Write a query to join the tables 'student' and 'course' and output the same. Check if you can find the course with id ENG201 in the output */

SELECT * 
FROM student s
INNER JOIN course c
ON s.course_id = c.course_id;