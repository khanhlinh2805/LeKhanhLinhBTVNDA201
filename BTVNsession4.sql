create database CompanyDB;
use CompanyDB;
create table employees(
employeeid int primary key auto_increment,
firstname varchar(50),
lastname varchar(50));
alter table employees
add column hiredate date;
alter table employees
add column salary int;
insert into employees (firstname, lastname, hiredate, salary)
values ('A', 'Nguyen Van', '2023-01-15', 12000000);
insert into employees (firstname, lastname, hiredate, salary)
values ('B', 'Le Thi', '2022-05-11', 11000000);
insert into employees (firstname, lastname, hiredate, salary)
values ('C', 'Tran Van', '2021-04-22', 1600000);
update employees
set salary = 4800
where employeeid = 2;
update employees
set hiredate = '2021-08-01'
where employeeid = 1;
delete from employees
where employeeid = 1;
set sql_safe_updates = 0;
delete from employees
where salary < 5000;
set sql_safe_updates = 1;

