create database assignment;
use assignment;

create table productlines(
productLine varchar(50) primary key,
textDescription varchar(4000),
htmlDecription mediumtext,
image mediumblob
);

create table products(
productCode varchar(15) primary key,
productName varchar(70) not null,
productLine varchar(50),
productScale varchar(10) not null,
productVendor varchar(50) not null,
productDecription text not null,
quantityInStock smallint not null,
buyPrice decimal(10, 2) not null,
MSRP decimal(10, 2) not null,
constraint fk_productToProductline
foreign key(productLine)
references productlines(productLine)
);

create table employees(
employeeNumber int primary key,
lastName varchar(50) not null,
firstName varchar(50) not null,
extension varchar(10) not null,
email varchar(100) not null,
officeCode varchar(10),
reportsTo int,
jobTitle varchar(50) not null,
constraint fk_emplToOffice
foreign key(officeCode)
references offices(officeCode)
-- constraint fk_emplToManager
-- foreign key(employeeNumber)
-- references employees(employeeNumber)
);

create table offices(
officeCode varchar(10) primary key,
city varchar(50) not null,
phone varchar(50) not null,
addressLine1 varchar(50) not null,
addressLine2 varchar(50) not null,
state varchar(50) not null,
country varchar(50) not null,
postalCode varchar(15),
teritory varchar(10) not null
);

create table customers(
customerNumber int primary key,
customerName varchar(50) not null,
contactLastName varchar(50) not null,
contactFirstName varchar(50) not null,
phone varchar(50) not null,
addressLine1 varchar(50) not null,
addressLine2 varchar(50) not null,
city varchar(50) not null,
state varchar(50),
postalCode varchar(15),
country varchar(50) not null,
employeeNumber int,
creditLimit decimal(10, 2),
constraint fk_customerToEmployee
foreign key(employeeNumber)
references employees(employeeNumber)
);

create table orders(
orderNumber int primary key,
orderDate date not null,
requiredDate date not null,
shippedDate date,
status varchar(15) not null,
comments text,
customerNumber int,
constraint fk_orderToCustomer
foreign key(customerNumber)
references customers(customerNumber)
);

create table orderdetails(
orderNumber int,
productCode varchar(15),
quantityOrdered int not null,
priceeach decimal(10, 2) not null,
orderLineNumber smallint not null,
primary key(orderNumber, productCode),
constraint fk_orderdetailToorders
foreign key(orderNumber)
references orders(orderNumber),
constraint fk_orderdetailToproduct
foreign key(productCode)
references products(productCode)
);

create table payments(
customerNumber int,
checkNumber varchar(50) primary key,
paymentDate date not null,
amount decimal(10,2),
constraint fk_paymentsToCustomers
foreign key(customerNumber)
references customers(customerNumber)
);

drop table orderdetails;
drop table products;