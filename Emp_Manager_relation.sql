
DROP TABLE EMPLOYEES;
CREATE TABLE EMPLOYEES (employee_id int,employee_name varchar(255),manager_id int);


INSERT INTO EMPLOYEES (employee_id, employee_name, manager_id) VALUES (1, 'Boss', 1), (3, 'Alice', 3), (2,'Bob', "1"), (4,'Daniel',2), (7,'Luis',4), (8,'John',3), (9,'Angela',8), (77,'Robert',1);


select employee_id as EMPLOYEE_ID from Employees where manager_id in
(select employee_id from Employees WHERE manager_id in
(select employee_id from Employees where manager_id = 1))
and employee_id !=1;
