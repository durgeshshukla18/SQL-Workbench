create database sports;
use sports;

create database healthcare;
drop database healthcare;

create database if not exists healthcare;
use healthcare;

create table test(
id int,
name varchar(50) 
);


create table hospitals
(
hospital_code int,
hospital_name varchar(50),
location varchar(200),
contact_no bigint
);

create database practice;
use practice;

create table table1
(
id int,
name varchar(50),
profession varchar(50),
contact bigint,
address varchar(100)
);

create table company
(
registration_no varchar(20),
company_no varchar(50),
no_of_employees int,
head_office_location varchar(20)
);

create table bank
(
IFSC varchar(10),
Bank_name varchar(50),
branch_name varchar(50),
address varchar(100),
contact bigint
);

create table stock
(
S_no int,
fund_house_name varchar(50),
fund_house_type varchar(20),
fund_house_size_inCr float
); 

use healthcare;
create or replace table healthcare.hospitals
(
hospital_code int,
hospital_name varchar(50),
location varchar(200),
contact_no bigint
);

insert into hospitals (hospital_code, hospital_name, location, contact_no)
	values (1, 'Apollo Hospital', 'Mumbai', 9900099000);
    
select * from hospitals;

use practice;
insert into bank
values("SBIN001647", "State Bank of India", "Whitefield","Whitefield, Bengaluru", 41162904561);
insert into bank
values("UBIN54018", "Union Bank of India", "Whitefield","KR Puram, Bengaluru", 4113047886);
insert into bank
values("BOBN067431", "Bank of Baroda", "Kattamannaluru","Hoskote, Bengaluru", 411705431);


select * from bank;

update bank
set address = "Krishnarajapuram, Bengaluru"
where IFSC = "UBIN54018";

set SQL_SAFE_UPDATES = 0;

update bank
set address = "Krishna Raja Puram, Bengaluru"
where branch_name = "Whitefield";

select * from bank;

update bank
set address = "Whitefield, Bengaluru"
where bank_name = "State Bank of India";


describe bank;

alter table bank
add City varchar(50);

select * from bank;

alter table bank
add State varchar(50) default "Karnataka";

alter table bank
drop City;

select * from bank;

alter table bank
add City varchar(50);

alter table bank
drop City;

describe bank;

alter table bank
rename Banking;

describe bank;
describe Banking;

alter table Banking
modify IFSC varchar(20);

describe Banking;

alter table banking
rename Bank;

describe Banking;
describe bank;

alter table Bank
change branch_name branch varchar(40);

describe Bank;

use healthcare;
insert into hospitals values (1, 'Fortis Hospital', 'Bangalore', 9900099000);
insert into hospitals values (2, 'Manipal Hospital', 'Manipal', 9900099222);
insert into hospitals values (3, 'Apollo Hospital', 'Mumbai', 9900099333);
insert into hospitals values (4, 'St. Francis Hospital', 'New York', 17194440001);
insert into hospitals values (4, 'Duke Hospital', 'New York', 17194440022);

select * from hospitals;

delete from hospitals
where hospital_code = 1;

delete from hospitals;

truncate hospitals;





select current_user();

create user 'temp'@'localhost' identified by 'abc@123';
-- to grant access to another user of database/s.
grant all privileges on practice.* to 'temp'@'localhost';
-- to stop the permission of the access given.
revoke all privileges on practice.* from 'temp'@'localhost';

grant all privileges on practice.* to 'temp'@'localhost';
revoke all privileges on practice.* from 'temp'@'localhost';



insert into hospitals values (1, 'Fortis Hospital', 'Bangalore', 9900099000);
insert into hospitals values (2, 'Manipal Hospital', 'Manipal', 9900099222);
insert into hospitals values (3, 'Apollo Hospital', 'Mumbai', 9900099333);
insert into hospitals values (4, 'St. Francis Hospital', 'New York', 17194440001);
insert into hospitals values (4, 'Duke Hospital', 'New York', 17194440022);

select * from hospitals;


rollback;
-- rollback can not be performed because autocommit is by defalt set to 1.

set autocommit = 0;
-- to set autocommit to 0.

insert into hospitals values (4, 'Duke Hospital', 'New York', 17194440022);

select * from hospitals;

rollback;
select * from hospitals;
-- now roll back(undo)  can be performed as autocommit is set to 0. 

insert into hospitals values (5, 'ABCD Hospital', 'New York', 17194440022);
savepoint savepoint1;
insert into hospitals values (6, 'EFGH Hospital', 'New York', 17194440022);
savepoint savepoint2;
insert into hospitals values (7, 'IJKL Hospital', 'New York', 17194440022);
savepoint savepoint3;

select * from hospitals;

rollback to savepoint1;

select * from hospitals;

select @@autocommit;