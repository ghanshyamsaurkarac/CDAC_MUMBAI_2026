-- 1. Define a schema for a Library Management System with the following entities:
   -- Books
   -- Authors
   -- Members
   -- Borrow_Records

create database Library_Management_system;

use Library_Management_system;

-- 2. Write the SQL command to create a table Authors with the following fields:
create table Authors(author_id int primary key,
name varchar(100),
country varchar(50));

-- 3. Write the SQL command to create a table Books with the following fields:
create table Books(book_id int primary key ,
title varchar(150),
author_id int,
published_year year,
available_copies int,
foreign key (author_id) references Authors(author_id));

-- 4. Write the SQL command to create a table Members with:

create table Members(member_id int Primary Key,
name VARCHAR(100),
email VARCHAR(100) unique,
phone VARCHAR(15));

-- 5. Write the SQL command to create a table Borrow_Records with:

create table Borrow_Records(record_id int Primary Key,
member_id int,
book_id int,
borrow_date DATE,
return_date DATE,
foreign key (member_id) references Members(member_id),
foreign key (book_id) references Books(book_id));

-- 6. Modify the Books table to add a column genre of type VARCHAR(50).
alter table Books add column genre varchar(50);

-- 7. Write the SQL command to drop the Borrow_Records table.

drop table Borrow_Records;

-- 8. Insert 3 records into the Authors table.
insert into Authors (author_id,name,country) values (1,"sanjay","india"),
(2,"Anu","germany"),
(3,"David","usa");
Select * from Authors;

-- 9. Insert 5 books into the Books table.
insert into Books (book_id,title,author_id,published_year,available_copies) values
(101,'Law of attraction',1,2021,1200),
(102,'Musafir cafe',2,2026,2100),
(103,'One step ahead',3,2020,4500),
(104,'Do epic shit',null,2021,600),
(105,'Atomic Habits',null,2021,500); -- i placed the null at the published year because their is no id is present in authors table.
select * from books;


-- 10. Insert 3 members into the Members table.
insert into Members(member_id,name,email,phone) values (1,'Dipesh','dip@gmail.com','6475286934'),
(2,'Ghansyam','ghanshyam@gmail.com','74759869157'),
(3,'Shyam','shyam@gmail.com','7028651479');
select * from members;

-- 11. Insert 4 borrow records into the Borrow_Records table.
insert into Borrow_Records (record_id,member_id,book_id,borrow_date,return_date) values (111,1,101,'2021-04-21','2026-08-13'),
(112,2,102,'2025-06-7',null),
(113,3,103,'2026-08-10','2026-09-16'),
(114,null,104,'2026-06-8',null);
select * from borrow_records;

-- 12. Write an SQL query to select all books where published_year is after 2015.

select * from books 
where published_year > 2015;

-- 14. Write an SQL query to find all members who have borrowed the book with title 'Database Systems'.
select m.name from members as m
join borrow_records as br
on m.member_id=br.member_id
join Books as b
on br.book_id=b.book_id
where b.title ='Database Systems';  -- i used the join concept join the tables.

-- 15.Update the available_copies column of a specific book (choose any book) by reducing it by 1 after it is borrowed.
update books set available_copies= available_copies-1 where book_id =103;
select * from books;

-- 16. Delete a record from Members where member_id = 3.
delete from members where member_id=3; 
select * from members;

-- 17.Update a Book name record from Book table  with id = 1.
select * from books;
update books set title='Law Of Attractions' where book_id=101;

-- 18. Write an SQL query to list all books along with their authors' names.
select b.title,a.name from books as b 
left join authors as a
on b.author_id= a.author_id;

-- 19. Write an SQL query to delete all books from the Books table where the published_year is before 2000.
set sql_safe_updates=0;
delete from books where published_year<2021; -- // I change the year bcoz no books in my table before 2000.//

-- 20. Write an SQL query to find all books that are never borrowed (i.e., no records in Borrow_Records).
select * from borrow_records;

select b.book_id,b.title,br.borrow_date from books as b
left join borrow_records as br
on b.book_id=br.book_id
where borrow_date is null;






  