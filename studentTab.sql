CREATE database College;
use college;


CREATE TABLE student (
id INT PRIMARY KEY,
name varchar(50),
age INT NOT NULL


);
INSERT INTO student VALUES(1, "AMAN", 26);
INSERT INTO student VALUES(2, "SANJEEV", 30);
INSERT INTO student VALUES(3, "RAJU", 31);
INSERT INTO student VALUES(4, "HARISH", 34);


select * from student;
