-- We have a student table that also stores the Course_id of a student's favorite course. Our task has two parts related to using a SELF JOIN:

--     Find pairs of students that belong to the same department.

SELECT s1.st_id, s1.st_name, s1.department, s2.st_id, s2.st_name, s2.department 
FROM student s1
JOIN student s2
on s1.department = s2.department
AND s1.St_id <> s2.St_id;

--     Identify students who have chosen the same Course_id as their favorite. Display the St_id, St_Name, and Course_id and order it in increasing Course_id.

SELECT DISTINCT s1.St_id, s1.St_Name, s1.Course_id
FROM student s1
JOIN student s2 
    ON s1.Course_id = s2.Course_id 
   AND s1.St_id <> s2.St_id
ORDER BY s1.Course_id ASC;