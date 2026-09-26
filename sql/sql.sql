create database sql;



create table students(
students_id serial,
name char(10),
age int,
grade char
);
insert into students(name,age,grade)
values ('akash',20,'A')

insert into students(name,age,grade)
values('kartik',22,'B')

insert into students(name,age,grade)
values('james',21,'A')

insert into students(name,age,grade)
values('amir',20,'A')

update students 
set age 24
where name = 'kartik';

delete from students 
where name='akash'
  
select * from students;

