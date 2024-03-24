create DATABASE collage;
use collage;
create table student(id int primary key, name varchar(50), class varchar(50), batch int);

create TABLE teacher(id int primary key, name varchar(50), subject varchar(50), deparment varchar(50),student_id  int,
 foreign key(student_id) REFERENCES student(id));

insert into student(id,name,class,batch) VALUES
                   (1,'Aakash','B_Tech',2023),
                   (2,'Aanjali','B.E',2021),
                   (3,'Siya','MCA',2024);

insert into teacher(id, name, subject, deparment, student_id)values
                   (1,'Joshi Sir','Computer Sciences','Dept of CS',3),
                   (2,'kulkarni mam', 'Maths','Dep of Math',1),
                   (3,'Rupali Mam','Java','Dept of CS',3),
                   (4,'Kiran Mam','DBMS','IT',1); 

select  teacher.id, teacher.name, teacher.subject, teacher.deparment from teacher
JOIN student on teacher.student_id = student.id where student.class='MCA';

UPDATE student SET marks=70 WHERE id = 1;
UPDATE student SET marks =78  WHERE id = 2;
UPDATE student SET marks =80  WHERE id = 3;

# delect teacher from database
DELETE from teacher where id=3;

SELECT * from student where id=1;

#Drop  TABLE
alter table student drop column email;


SELECT * from teacher where subject='Math';
# No database beacuse Math is not exist Maths is exist

select * from student where marks=70;
select name from teacher where deparment='IT';

insert into student(id,name,class,batch) VALUES
                   (4,'Siya','Math',2010);

# like operater
select * from student where name like '%A';
select * from student where name like '%i';
select * from student where name like '_i%';
select * from student where name like 'A_%';
select * from student where name like 's%a';



# for distinct
select distinct name from student;

# in operator
SELECT * FROM student where id IN (1,2);
SELECT * FROM student where id IN (2);



