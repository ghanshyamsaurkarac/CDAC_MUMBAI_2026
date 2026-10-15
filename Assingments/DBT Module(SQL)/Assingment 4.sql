-- Write Create a Employee ,Department & Project Tables .Add atleast  5 records in each table & Write a following Queries.
CREATE TABLE Project (
    proj_id INT PRIMARY KEY,
    proj_name VARCHAR(50),
    budget DECIMAL(10,2),
    start_date DATE,
    dept_id INT,
   constraint fk_project FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
   on delete cascade
   on update cascade
);

INSERT INTO Project
(proj_id, proj_name, budget, start_date, dept_id)
VALUES
(101, 'Hospital Management', 150000, '2025-01-10', 1),
(102, 'Banking System', 200000, '2025-02-15', 2),
(103, 'E-Commerce Website', 120000, '2025-03-01', 1),
(104, 'Payroll System', 90000, '2025-04-12', 3),
(105, 'Library Management', 80000, '2025-05-20', 2);

select * from project;

-- 1. Write a Relational Algebra expression to perform Cartesian Product (Cross Join) between Emp and Dept tables.
select * from employee
cross join department; 

-- 2.	Write a SQL query to perform an INNER JOIN between Emp and Dept tables displaying EmpName and DeptName.
select e.emp_name,d.Dept_name from employee as e
inner join department as d
on e.dept_id=d.dept_id; 

-- 3.	Write a SQL query to perform a LEFT OUTER JOIN between Emp and Dept tables 
-- to display all employees along with their department information, including employees without a department.
select e.*,d.* from employee as e
left join department as d
on e.dept_id=d.dept_id;

-- 4.	Write a SQL query to perform a RIGHT OUTER JOIN between Emp and Dept tables.
select * from employee as e
right join department as d
on e.dept_id=d.dept_id;

-- 5.	Write a SQL query to perform a NATURAL JOIN between Emp and Dept.
select * from employee as e
natural join department as d;

-- 6.	Write a SQL query to perform a CROSS JOIN between Emp and Project table.
alter table employee add column proj_id int;
alter table  employee add constraint fk_proj_emp foreign key (proj_id) references project(proj_id); -- I add the foreign key in my employee table

select * from employee 
cross join project;

-- 7.	Write a SQL query to create a new table EmpBackup with the same structure as Emp but no data.
create table EmpBackup like employee;

-- 8.	Write a SQL query to copy all data from Emp into EmpBackup table.
insert into empbackup
select * from employee;
select * from empbackup;

-- 9.	Write a SQL query to create a new table ProjectArchive with the same structure and data as Project.
create table ProjectArchive like project;

insert into projectarchive 
select * from project;
select * from projectarchive;

-- 10.	Write a SQL query to create an AUTO_INCREMENT sequence for EmpID in the Emp table during table creation.


-- 11.	Write a SQL query using a subquery to find all employees whose salary is greater than the average salary of all employees.
select emp_name,salary from employee
where salary>(select avg(salary) from employee);

-- 12.	Write a SQL query using a subquery in WHERE clause to find employees working in departments located in 'Mumbai'.
select e.emp_name,d.dept_name,d.location from employee as e
join department as d
on e.dept_id =d.dept_id
where location in (select location from department  where location='mumbai') ;

-- 13.	Write a SQL query to display all departments where the number of employees is greater than 5, using a subquery.
select d.dept_id,d.dept_name from department as d
where d.dept_id in (select e.dept_id from employee as e group by e.dept_id  having count(*)>5);

-- 14.	 Write a subqueries for find out Max salary of employee.
select salary from employee 
where salary =(select max(salary) from employee);

-- 15.	Write a  self join query for each table.
select * from employee as e1
join employee as e2
on e1.emp_id=e2.emp_id;             -- for employee table

select * from department as d1
join department as d2
on d1.dept_id=d2.dept_id;         -- for department table

select * from project as p1
join project as p2
on p1.proj_id=p2.proj_id;         -- for project table
