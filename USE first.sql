create database first;
USE first;
CREATE table students1(id int primary key, name varchar(50), marks int, age int);

alter table students1 add column email varchar(50);

-- Update email for each student
UPDATE students1 SET email = 'tiya@01.com' WHERE id = 1;
UPDATE students1 SET email = 'siya@02' WHERE id = 2;
UPDATE students1 SET email = 'jiya@03' WHERE id = 3;
UPDATE students1 SET email = 'riya@04' WHERE id = 4;
UPDATE students1 SET email = 'piya@05' WHERE id = 5;




INSERT INTO students1 (id, name, marks, age, email)
VALUES (6, 'jiji', 80, 4, 'jiji@06'),
       (7, 'jojo', 70, 5, 'jojo@07');

select  * from students1 where marks>=70;

ALTER table students1 drop email;

select * FROM students1 WHERE name='Tiya';

DELETE FROM students1 WHERE marks <= 70;

drop table student;
drop table students;

