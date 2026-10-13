-- 1. Write a SQL query to create Employee & Department table with specific columns and constraints.
--     (Note- Create Table, insert data as per your Choice)

create table Department(dept_id int primary key,
Dept_name varchar(20)); 

create table employee (emp_id int primary key,
emp_name varchar(30),
salary int,
joining_date date,
dept_id int,
constraint fk_dept foreign key (dept_id) references Department(dept_id)
on delete cascade
on update cascade );

insert into department (Dept_id,dept_name) values (1,'AC'),
(2,'BDA'),
(3,'AI');
select * from department;

insert into employee (emp_id,emp_name,salary,joining_date,dept_id) values
(101,'om',35000,'2020-06-04',1),
(102,'shyam',55000,'2024-07-12',3),
(103,'shill',50000,'2022-03-5',2),
(104,'ram',84000,'2026-02-10',3),
(105,'raj',73000,'2023-08-13',1);
select * from employee;


-- 2. Write a SQL query to add any new column to an existing table.
alter table employee add column age int not null after joining_date;

-- 3. Write a SQL query to insert multiple records (At least 5) into a table in a single operation.
insert into employee (emp_id,emp_name,salary,joining_date,age,dept_id) values
(106,'vipul',35000,'2021-06-04',36,2),
(107,'aditya',55000,'2025-03-11',16,1),
(108,'aniket',50000,'2025-03-7',33,3),
(109,'pankaj',84000,'2022-06-26',45,2),
(110,'abhi',73000,'2023-09-22',25,3);

-- 4. Write a SQL query to delete all records from a table.
truncate employee;

-- 5. Write a SQL query to update salary records from a table where id = 5.
select * from employee;
update employee set salary= 60000 where emp_id=105;

-- 6. Write a query to grant SELECT privilege on the Emp table to user readonly_user.
-- 7. Write a query to revoke INSERT privilege on the Emp table from user temp_user.

-- 8. Write a query to insert a new employee into the Emp table and commit the transaction.
start transaction;
insert into employee (emp_id,emp_name,salary,joining_date,age,dept_id) values
(111,'aman',120546,'2019-04-24',44,3);
commit;

-- 9. Write a query to update the Salary of an employee with EmpID = 101 and commit the transaction.
select * from employee;
start transaction;
update employee set salary=83000 where emp_id=101;
commit;

-- 10. Write a query to set a SAVEPOINT before updating the DeptID of an employee.
start transaction;
update employee set emp_id=112 where emp_id=111;
savepoint s1;

-- 11. Write a query to rollback to the previously created SAVEPOINT.
start transaction;
update employee set emp_id=112 where emp_id=111;
savepoint s1;
update employee set emp_id=113 where emp_id=110;
rollback to s1;

-- 12. Write a query to truncate all data from the Emp table.
truncate employee;



