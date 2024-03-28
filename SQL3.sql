

create table customer2(id int primary key, cname varchar(50),email varchar(50));
insert INTO customer2(id,cname,email)values
                    (1,'Ashok','ashokh@gmail.com'),
                    (2,'Namdev','namedev@gmail.com'),
                    (3,'Aashvini','aashvini@gmail.com');

create table order(id int primary key, odate date, customer2_id int,foreign key(customer2_id) REFERENCES customer2(id));
insert INTO order(id,odate, customer2_id)values
                 (1,20-01-2010,3),
                 (2,10-12-2020,1),
                 (3,05-10-2022,2);
###### JOINS
CREATE TABLE customer (
    id INT PRIMARY KEY,
    cname VARCHAR(50),
    email VARCHAR(50)
);

INSERT INTO customer (id, cname, email)
VALUES
    (1, 'Ashok', 'ashokh@gmail.com'),
    (2, 'Namdev', 'namedev@gmail.com'),
    (3, 'Aashvini', 'aashvini@gmail.com');

CREATE TABLE orders (
    id INT PRIMARY KEY,
    odate DATE,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customer(id)
);

INSERT INTO orders (id, odate, customer_id)
VALUES
    (1, '2010-01-20', 3),
    (2, '2020-12-10', 1),
    (3, '2022-10-05', 2);



SELECT id from customer INNER JOIN order ON customer.id = orders.id;    


                