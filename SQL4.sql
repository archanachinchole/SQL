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

SELECT s1.id
FROM student AS s1SELECT t1.id
FROM teacher AS t1
JOIN teacher AS t2 ON t1.id = t2.id;

JOIN student AS s2 ON s1.id = s2.id;


select t1.name as teach, t2.name as teach2 from teacher as t1 join teacher as t2 on t1.student_id = t2.id;


#set operatorations
select  name from student union SELECT name from teacher;
select name from student union ALL select name from teacher;

select name from student INTERSECT select name from teacher;
# error in above code so use a below code
# INTERSECT & RIGHT JOIN are same

SELECT s.name
FROM student s
INNER JOIN teacher t ON s.name = t.name;

select name from student except select name from teacher;
# error in above code so use a below code
# except & RIGHT JOIN are same

SELECT s.name
FROM student s
LEFT JOIN teacher t ON s.name = t.name;

