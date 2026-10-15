-- 1. Write a query to calculate the total salary of all employees.
select * from employee;

select sum(salary) as Total_salary from employee;

-- 2. Write a query to find the average salary of employees in each department using GROUP BY.
select dept_id,avg(salary) from employee 
group by Dept_id;

-- 3. Write a query to count the total number of employees in each department.
select Dept_id,count(emp_id) as count_of_emp from employee
group by Dept_id; 

-- 4. Write a query to display departments having more than 5 employees using HAVING clause.
select dept_id,count(emp_id) as count_of_emp from employee
group by dept_id
having count_of_emp >=5;

-- 5. Write a query to list distinct department locations from the Dept table.(i have done some changes in my table)
select * from department;

-- ----
alter table department add column location varchar(20);
set sql_safe_updates=0;
update department set location='mumbai' where dept_name='BDA';
update department set location='pune' where dept_name='AC';
update department set location='mumbai' where dept_name='AI';

select distinct location from department; -- query for Q5

-- 6. Write a query to display the highest salary among all employees.
--  Write a query to display all total number of  employee in table.
select max(salary) from employee;
select count(emp_id) as count_of_employees from employee;

-- 7. Write a query to find employees whose name starts with 'A' using LIKE operator.
select emp_name from employee 
where emp_name like 'A%';

-- 8. Write a query to find employees whose name ends with 'n' using LIKE operator.
select emp_name from employee 
where emp_name like '%n';

-- 9. Write a query to find employees whose name contains 'ra' using LIKE operator.
select emp_name from employee 
where emp_name like '%ra%';

-- 10. Write a query to display all employees sorted by their Salary in descending order.
select * from employee 
order by salary desc;

-- 11. Write a query to display all employees sorted by DeptID ascending and then Salary descending.
select * from employee
order by dept_id, 
salary desc; 

-- 12. Write a query to find employees whose salary is between 30,000 and 60,000.
select emp_name,salary from employee 
where salary between 30000 and 60000;

-- 13. Write a query to display all employees whose DeptID is in (10, 20, 30). 
select * from employee 
where dept_id in (1,2); -- i have id 1,2,3 so i used (1,2)

-- 14. Write a query to display Min salary of employee .
select min(salary) from employee;

-- 15. Write a query to display employees whose JoiningDate is between '2020-01-01' and '2021-12-31'.
select emp_name,joining_date from employee
where joining_date between '2020-01-01' and '2021-12-31';

-- 16. Write a query to display employees whose Salary is NULL.
select emp_id,emp_name,salary from employee
where salary is null;

-- 17. Write a query to display employees whose Salary is NOT NULL.
select emp_id,emp_name,salary from employee
where salary is not null;

-- 18. Write a query to calculate the total salary per department, 
-- but only for departments where total salary is greater than 1,00,000 (use HAVING).
select dept_id, sum(salary) as Total_salary from employee
group by dept_id
having Total_salary>100000;

-- 19. Write a query to display all distinct employee names.
select distinct emp_name from employee;

-- 20. Write a query to count the number of departments having the same location.
select location ,count(*) as count_of_department from department
group by location 
having count_of_department > 1;
