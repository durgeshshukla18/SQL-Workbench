use practice;

create table details(
id int primary key,
name varchar(50),
age int);

insert into details
values(1, "abcd", 20);
insert into details
values(2, "defg", 25);

select * from details;

drop table details;

create table details(
id int auto_increment primary key,
name varchar(50),
age int);

insert into details
values(1, "abcd", 20);
insert into details(name, age)
values("abcd", 20);
insert into details(name, age)
values("defg", 25);

create table employee(
id1 int auto_increment,
id2 int,
name varchar(50),
primary key(id1, id2)
);

insert into employee(id2, name)
values(1, "abcd");

select * from employee;

insert into employee
values(2, 1, "defg");

-- CREATE TABLE categories(
--   categoryId INT AUTO_INCREMENT PRIMARY KEY, 
--   categoryName VARCHAR(100) NOT NULL
-- ) ENGINE = INNODB;
-- CREATE TABLE products(
--   productId INT AUTO_INCREMENT PRIMARY KEY, 
--   productName VARCHAR(100) NOT NULL, 
--   categoryId INT, 
--   CONSTRAINT fk_category FOREIGN KEY (categoryId) 
--                          REFERENCES categories(categoryId)
-- );


drop table bank;

create table bank(
customer_id int primary key,
account_no int,
name varchar(50));

create table transaction(
transaction_id int auto_increment primary key,
customer_id int,
amount int,
constraint fk_banking foreign key(customer_id)
references bank(customer_id));

insert into bank values(121, 123, "abc");
insert into transaction values(1, 23, 50);
insert into transaction values(1, 121, 50);

select * from bank;
select * from transaction;

