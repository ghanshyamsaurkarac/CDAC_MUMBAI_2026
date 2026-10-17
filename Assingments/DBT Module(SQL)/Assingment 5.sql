
--  Q1. Check Even or Odd  
-- Create a stored procedure check_even_odd that accepts an integer and 
-- displays whether the number is Even or Odd.
 
-- Test cases: 
-- CALL check_even_odd(25); 
-- CALL check_even_odd(40); 



delimiter //

create procedure check_even_odd(in n int)
begin

if mod(n,2)=0 then
select 'even' as result;
else
select 'odd' as result ;
end if;

end //
delimiter ; 
call check_even_odd(7);


 
-- Q2. Calculate Simple Interest  
-- Create a stored procedure calculate_interest that accepts principal amount, rate of interest, and time in years 
-- and calculates Simple Interest. 
-- Simple Interest = (Principal × Rate × Time) / 100 
-- Test cases: 
-- CALL calculate_interest(10000, 5, 2); 
-- CALL calculate_interest(25000, 7, 3);

delimiter //
create procedure calculate_interest(in principal int ,in rate int ,in time int)
begin 

declare si decimal(10,2) default 0;

set si = (principal * rate * time ) /100;
select si as simple_interest; 

end //
delimiter ; 
drop procedure calculate_interest;
 call calculate_interest(10000,5,2);
 CALL calculate_interest(25000, 7, 3); 



 
--  Q3. Calculate Grade  
-- Create a stored procedure calculate_grade that accepts student ID, student name, and marks and displays the student
-- Test cases: 
-- CALL calculate_grade(101, 'Amit', 85); 
-- CALL calculate_grade(102, 'Priya', 72); 
-- CALL calculate_grade(103, 'Rahul', 45); 
 create table student (student_ID int primary key,
 student_name varchar(30),
 marks int
 );
 
 
delimiter //
create procedure calculate_grade (in student_ID int ,in student_name varchar(30),in  marks int)
begin 
declare grade varchar(5); 
if marks>=90 then
set grade= 'A+';

elseif marks >=80 then
set grade= 'A';

elseif marks >=70 then
set grade= 'B';

elseif marks >=60 then
set grade= 'C';

elseif marks >=50 then
set grade= 'D';

else 
set grade ='F';

end if;
select grade as Grade;

end //
delimiter ;
CALL calculate_grade(101, 'Amit', 92); 
CALL calculate_grade(102, 'Priya', 72); 
CALL calculate_grade(103, 'Rahul', 45); 


 
--  Q4. Calculate Employee Bonus   
-- Create a stored procedure calculate_bonus that accepts employee name and salary and calculates the bonus 
-- according to the following rules. Display employee name, salary, bonus percentage, bonus amount, and total 
-- salary.

-- CALL calculate_bonus('Amit', 120000); 
-- CALL calculate_bonus('Priya', 65000); 
-- CALL calculate_bonus('Rahul', 25000);

delimiter //
create procedure calculate_bonus(in emp_name varchar(20), in salary decimal(10,2))
begin 

declare bonus varchar(5) ;
declare bonus_amount decimal(10,2);
declare total_salary decimal(10,2);

if salary>=100000 then
set bonus ='20%';
set bonus_amount = salary*0.20;
set total_salary = salary+(salary*0.20);

elseif salary >=50000 then
set bonus ='15%';
set bonus_amount = salary*0.15;
set total_salary = salary+(salary*0.15);

elseif salary >=30000 then
set bonus ='10%';
set bonus_amount = salary*0.10;
set total_salary = salary+(salary*0.10);

else 
set bonus ='5%';
set bonus_amount = salary*0.05;
set total_salary = salary+(salary*0.05);

end if;

select emp_name,salary,bonus,bonus_amount,total_salary ;

end//
delimiter ;

CALL calculate_bonus('Amit', 120000); 
CALL calculate_bonus('Priya', 65000); 
CALL calculate_bonus('Rahul', 25000); 




-- Q5. Find Maximum of Three Numbers — 
-- Create a stored procedure find_maximum that accepts three integers and displays the largest number. 
-- Test cases: 
-- CALL find_maximum(25, 78, 45); 
-- CALL find_maximum(100, 50, 75); 

delimiter //

create procedure find_maximum(in a int ,in b int ,in c int)
begin 

if a>b and a>c then
select a 'largest number'; 

elseif b>c then
select b 'largest number';

else 
select c 'largest number';

end if;
end //
delimiter ;
drop procedure find_maximum;
CALL find_maximum(25, 78, 45); 
CALL find_maximum(100, 50, 75); 
CALL find_maximum(30, 30, 20); 




-- Q6. Employee Salary Analysis  
-- Create a stored procedure salary_analysis that accepts employee name and salary. Determine the salary 
-- category and allowance, then calculate the final salary. Display employee name, salary, category, allowance 
-- percentage, allowance amount, and final salary.

-- Allowance = Salary × Allowance Percentage / 100 
-- Final Salary = Salary + Allowance 
-- Test cases: 
-- CALL salary_analysis('Amit', 120000); 
-- CALL salary_analysis('Priya', 60000); 
-- CALL salary_analysis('Rahul', 35000); 

delimiter // 
create procedure salary_analysis(in emp_name varchar(20),in salary int)
begin 

declare allowance_percentage varchar(20);
declare category varchar(20);
declare allowance decimal(10,2);
declare final_salary decimal(10,2);

if salary>=100000 then
set category ='HIGH' ;
set allowance_percentage='20%';
set allowance = (salary*20)/100;
set final_salary = salary+allowance;

elseif salary>=50000 then
set category ='MEDIUM' ;
set allowance_percentage='15%';
set allowance = (salary*15)/100;
set final_salary = salary+allowance;

else 
set category ='LOW' ;
set allowance_percentage='10%';
set allowance = (salary*10)/100;
set final_salary = salary+allowance;

end if;
select Emp_name, Salary,Category, Allowance_percentage, Allowance as Allowance_amount, Final_salary;
end //
delimiter ;

CALL salary_analysis('Amit', 120000); 
CALL salary_analysis('Priya', 60000); 
CALL salary_analysis('Rahul', 35000); 




-- Q7. Electricity Bill Calculation  
-- Create a stored procedure calculate_electricity_bill that accepts consumer name and units consumed. Calculate 
-- the electricity bill using the slab-wise rates below. Display consumer name, units consumed, and total bill amount.

-- CALL calculate_electricity_bill('Amit', 80); 
-- CALL calculate_electricity_bill('Priya', 150); 
-- CALL calculate_electricity_bill('Rahul', 350); 
-- CALL calculate_electricity_bill('Sneha', 500); 

delimiter //
create procedure calculate_electricity_bill(in consumer_name varchar(20),in units int)
begin 

declare rate int;

if 100>=units and units>0 then
set rate =units*2;

elseif 200>=units and units>100 then
set rate =(100*2) +((units-100)*3);

elseif 400>=units and units>200 then
set rate =(100*2) + (100*3)+ ((units-200)*5);

else 
set rate =(100*2)+(100*3)+(200*5)+((units-400)*7);
end if;

select Consumer_name, units as Units_consumed, rate as Total_bill_amount;

end //
delimiter ;

CALL calculate_electricity_bill('Amit', 80); 
CALL calculate_electricity_bill('Priya', 150); 
CALL calculate_electricity_bill('Rahul', 350); 
CALL calculate_electricity_bill('Sneha', 500); 
