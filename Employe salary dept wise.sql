
DROP TABLE Department;
CREATE TABLE Department (D_Id int PRIMARY KEY, Dept_Name varchar(100));
INSERT INTO Department (D_Id, Dept_Name) VALUES (1, 'IT') , (2, 'Sales');
SELECT * FROM Department;

DROP TABLE EMPLOYEE;
CREATE TABLE EMPLOYEE (E_Id int PRIMARY KEY, Emp_Name varchar(100), Salary int, D_Id int FOREIGN KEY REFERENCES Department(D_Id) );
INSERT INTO EMPLOYEE (E_Id, Emp_Name, Salary, D_Id) VALUES (1, 'Joe', 70000, 1), (2, 'Jim', 90000, 1), (3, 'Henry', 80000, 2), (4, 'Sam', 60000, 2), (5,'Max', 90000, 1);
SELECT * FROM EMPLOYEE;

SELECT  Department.Dept_Name,Employee.Emp_Name,MAX(Salary) FROM EMPLOYEE;

SELECT Emp_Name, Salary, RANK() OVER (ORDER BY SALARY Desc) AS RANK FROM EMPLOYEE GROUP BY D_Id;
 
--Write an SQL query to find employees who have the highest salary in each of the departments.

SELECT B.Dept_Name AS Department, A.Emp_Name as Emp_Name, A.



