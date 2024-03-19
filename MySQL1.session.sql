
USE first;

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