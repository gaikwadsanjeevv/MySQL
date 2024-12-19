create database XYZ;


use XYZ;


CREATE TABLE employee(
id INT primary KEY,
name varchar(30),
salary double
);




INSERT INTO employee(id, name, salary)
values (1, "adam", 25000), (2,"bob", 30000), (3,"casey",40000);


select * from employee;
