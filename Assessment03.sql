create database assessment;
use assessment;

create table employee(
employee_ID int unique primary key,
employeeName varchar(45)
);

drop table employee;

create table department(
department_ID int unique primary key,
department_name varchar(225),
employee_ID int,
constraint fk_department_to_employee
foreign key(employee_ID)
references employee(employee_ID)
);

drop table department;

create table project(
project_ID int unique primary key,
projectName varchar(255),
department_ID int,
status enum ('active', 'inactive'),
constraint fk_project_to_department
foreign key(department_ID)
references department(department_ID)
);

drop table project;

create table assignment(
assignment_ID int unique primary key,
assigning_date datetime,
department_ID int,
project_ID int,
constraint fk_assignment_to_department
foreign key(department_ID)
references department(department_ID),
constraint fk_assignment_to_project
foreign key(project_ID)
references project(project_ID)
);

drop table assignment;

create table employee_assignment(
employee_employee_ID int,
assignment_assignment_ID int,
constraint fk_employeeassignment_to_employee
foreign key(employee_employee_ID)
references employee(employee_ID),
constraint fk_employeeassignment_to_assignment
foreign key(assignment_assignment_ID)
references assignment(assignment_ID)
);

-- 1.
insert into employee
values(3, "Alice Johnson");

-- 2.
insert into department values(11, "HR", 3);
insert into project values(10, "Project Alpha", 11, 'active');
insert into assignment values(3, "2024-07-23", 11, 10);

-- 3.
alter table employee
add email varchar(100);
select * from employee;

-- 4.
alter table department
modify department_name varchar(255);

-- 5.






-- --------------------------------  2  ---------------------------------------------

create table employees(
ID int auto_increment primary key,
name varchar(50),
department varchar(50),
salary int,
hire_date date
);






