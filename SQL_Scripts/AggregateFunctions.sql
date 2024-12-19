
use college;


CREATE TABLE student11 (
rollno INT PRIMARY KEY,
name varchar(50),
marks INT NOT NULL,
grade varchar(1),
city varchar(20)
);
INSERT INTO student11 (rollno, name, marks, grade, city)
values
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");


select * from student11;

SELECT MAX(marks) as MaxMarks
from student11;
SELECT MIN(marks) as MinMarks
from student11;
SELECT AVG(marks) as AvgMarks
from student11;
SELECT COUNT(name) as CountMarks
from student11;
