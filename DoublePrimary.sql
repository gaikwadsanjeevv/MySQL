//We can make combination of 2 columns also as primary key : 


SELECT * FROM student;
CREATE TABLE temp1 (
Id INT,
name VARCHAR(50),
age INT,
City VARCHAR(20),
PRIMARY KEY(id, name)
);


//So here id and name combination of 2 colm will be unique always.


