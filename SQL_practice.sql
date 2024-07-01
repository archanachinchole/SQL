use test; 
create TABLE teachers(id int primary key, name varchar(50), deparment varchar(50), subject varchar(50));
CREATE TABLE student1(id int primary key, name varchar(50), class varchar(50), batch int, teachers_id int, foreign key(teachers_id) REFERENCES teachers(id));

INSERT INTO teachers(id, name, deparment, subject) values
                    (1, 'yogita', 'statistics','stochastics'),
                    (2, 'kiran', 'math','calculas'),
                    (3, 'komal', 'statistics', 'insurance');

insert INTO student1(id, name, class, batch, teachers_id) values
                     (1, 'puja','actuarial', 2019, 2),
                     (2, 'jiya','actuarial', 2022, 2),
                     (3, 'raj', 'statistics', 2023, 1),
                     (4, 'Abhi', 'math', 2022, 1),
                     (5, 'gauri', 'actuarial', 2022, 3);
                     



