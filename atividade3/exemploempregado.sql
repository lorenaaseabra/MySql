CREATE TABLE Employee(
    idEMP INT NOT NULL UNIQUE,
    empname CHAR(20),
    age INTEGER, 
    salary DOUBLE,
    PRIMARY KEY(idemp)
);

SELECT * FROM Employee;
SELECT empname FROM Employee WHERE age>40 AND salary>20000;
SELECT empname FROM Employee WHERE empname LIKE "%ria";
SELECT COUNT(*) FROM Emplyee WHERE age="";
SELECT COUNT(*) FROM Emplyee WHERE salary<(SELECT AVG(salary) FROM Employee);