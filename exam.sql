CREATE DATABASE xyz;
show DATABASES;
use xyz;

CREATE TABLE employee(
	id int(10),
    name varchar(20),
    salary int(10)
);
show tables;

INSERT INTO employee
(id,name,salary)
VALUES
(101,"waqas khan",30000),
(102,"umair khattak",40000),
(103,"hamza Mubeen",40000);

SELECT * FROM employee;

CREATE TABLE hello(
	id 	INT(10),
    name VARCHAR(30) NOT NULL,
    city VARCHAR(30) UNIQUE,
    PRIMARY KEY(id)
);
SHOW TABLES;
INSERT INTO hello (id,name,city) VALUES(11,"waqas","mardan");
INSERT INTO hello (id,name,city) VALUES(12,"ali","mardan");

SELECT * FROM hello;
