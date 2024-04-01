use collage;
alter TABLE student add column subjects varchar(50);

UPDATE student SET  subjects= 'Math' WHERE id = 1;
UPDATE student SET  subjects= 'Computer sciences' WHERE id = 2;
UPDATE student SET  subjects= 'DBMS' WHERE id = 3;
UPDATE student SET  subjects= 'Statistics' WHERE id = 4;


select student_id from student INNER JOIN teacher ON student.id =  teacher.id;
select student_id from student INNER JOIN teacher ON student.id =  teacher.student_id;
select student_id from student LEFT JOIN teacher ON student.id =  teacher.student_id;
select student_id from student cross JOIN teacher ON student.id =  teacher.id;
select student_id from student LEFT  OUTER JOIN teacher ON student.id =  teacher.id;
select student_id from student RIGHT OUTER JOIN teacher ON student.id =  teacher.id;
select student_id from student cross JOIN teacher ON student.id =  teacher.id;
select student.name, teacher.name from student CROSS join teacher;

USE collage;
#select student.name from student as s1 join  student as s2 on s1.name = s2.name;
# ABOVE CODE IS not useful that why use below 

SELECT s1.name
FROM student AS s1
JOIN student AS s2 ON s1.name = s2.name;

