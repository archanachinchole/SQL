CREATE DATABASE shopping;
CREATE table customers(id int primary key, name varchar(50), email varchar(50));
CREATE TABLE shipper (id INT PRIMARY KEY, address VARCHAR(50), customer_id INTFOREIGN KEY (customer_id) REFERENCES customer(id));

insert into customer(id,name,email)values
                    (1,'Soji','soji1@gmail.com'),
                    (2,'Roya','Roya2@gmail.com'),
                    (3,'Tiya','Tiya3@gmail.ciom'),
                    (4,'jojo','jojo4@gmail.com');

insert into shipper(id,address,customer_id)VALUES
                     (1,'lajpat Nagar',2),
                     (2,'pradhikaran Aakurdi',1),
                     (3,'crisent Collany',3),
                     (4,'Shivaji Tour',2);
