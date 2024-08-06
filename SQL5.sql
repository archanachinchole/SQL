create database family;
use family;
create table parents(member int primary key, name varchar(50), personality varchar(50), age int);
create table child(member int primary key, name varchar(50), personality varchar(50), parents_member int, foreign key(parents_member) REFERENCES parents(member));

insert into parents(member, name, personality,age)values
                   (1,'pramila','rude',75),
                   (2,'manoj','calm',50),
                   (3,'Dipali','inocent',45),
                   (4,'jayshree','funny',43),
                   (5,'bhau','rude',47);
INSERT INTO child (member, name, personality, parents_member) VALUES
    (1, 'archana', 'deep_thinker', 2),
    (2, 'harsh', 'psycho', 5),
    (3, 'himanshu', 'peaceful', 4),
    (4, 'Aadarsh', 'mad', 5),
    (5, 'shital', 'funny', 1);

#1.0.
select parents.member, parents.name, parents.personality, parents.age from parents;


#2.
select member, name, personality, parents_member from child

#3. Find all children and their parents.
SELECT 
    child.member AS child_id, 
    child.name AS child_name, 
    child.personality AS child_personality, 
    parents.member AS parent_id, 
    parents.name AS parent_name, 
    parents.personality AS parent_personality, 
    parents.age AS parent_age
FROM 
    child
JOIN 
    parents 
ON 
    child.parents_member = parents.member;


#4. Find children with a specific personality trait (e.g., 'funny')
SELECT * FROM child WHERE personality = 'funny';

#6. Count the number of children each parent has
SELECT 
    parents.name AS parent_name, 
    COUNT(child.member) AS number_of_children
FROM 
    parents
LEFT JOIN 
    child 
ON 
    parents.member = child.parents_member
GROUP BY 
    parents.name;


#8. Retrieve parent-child pairs where both have the same personality trait

SELECT 
    parents.name AS parent_name, 
    child.name AS child_name, 
    parents.personality AS personality
FROM 
    parents
JOIN 
    child 
ON 
    parents.member = child.parents_member
WHERE 
    parents.personality = child.personality;

#9. List all parents and their children, including parents without children

SELECT 
    parents.member AS parent_id, 
    parents.name AS parent_name, 
    parents.personality AS parent_personality, 
    parents.age AS parent_age, 
    child.member AS child_id, 
    child.name AS child_name, 
    child.personality AS child_personality
FROM 
    parents
LEFT JOIN 
    child 
ON 
    parents.member = child.parents_member;

#10. Find all children who have a parent older than 45 years

SELECT
      child.member as child_id,
      child.name as child_name,
      child.personality as child_personality 
from
child
join       
parents
ON
child.parents_member = parents.member
where 
parents.age >=50;


#highest age of child parents
SELECT 
    parents.member AS parents_id,
    parents.name AS parent_name,
    parents.personality AS parent_personality,
    parents.age AS parent_age,
    child.name as child_name
FROM 
    parents   
JOIN 
    child
ON 
    parents.member = child.parents_member
ORDER BY 
    parents.age DESC
LIMIT 1;

######
use family;
select name,avg(age) from parents group by name having avg(age)>40;

########## insert rows into student table

insert into parents(member, name,personality,age)values
                   (6,'Toto','innocent',71),
                   (7,'Piya','calm',50);                   


select * from parents;

##add age column in child table

alter table child add column age varchar(50);

update child set age=12 where member=1;
update child set age=15 where member=2;
update child set age=10 where member=3;
update child set age=15 where member=4;
update child set age=19 where member=5;

SELECT * from child;
##SET