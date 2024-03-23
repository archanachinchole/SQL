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

# delect teacher from database
DELETE from teacher where id=3;

SELECT * from student where id=1;


SELECT * from teacher where subject='Math';
# No database beacuse Math is not exist Maths is exist

select * from student where marks=70;
select name from teacher where deparment='IT';

insert into student(id,name,class,batch) VALUES
                   (4,'Siya','Math',2010);
