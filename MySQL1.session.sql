CREATE TABLE shippers(
    id INT PRIMARY KEY,
    address VARCHAR(50),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customer(id)
);
