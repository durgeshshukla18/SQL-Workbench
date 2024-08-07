use classicmodels;

-- 
select * from products;
select productCode, productName,
case 
when MSRP < 50 then "Budget"
when MSRP between 50 and 150 then "Standered"
when MSRP > 150 then "Premium"
else "Unknown"
end Category
from products;

-- 2
select * from orders;
select orderNumber,
case
when shippedDate <= requiredDate then "On Time"
when shippedDate > requiredDate then "Late"
else "Pending"
end as time_status
from orders;

-- 3
select * from employees;
select employeeNumber, firstName,
case
when jobTitle like "%Manager%" or "%VP%" then "Senior"
when jobTitle like "%Supervisor%" then "Mid"
else "Junior"
end as Status
from employees;


-- 4
select * from customers;
select customerNumber, customerNumber,
case
when creditLimit > 100000 then "Gold"
when creditLimit between 100000 and 50000 then "Gold"
else "Bronze"
end as Category
from customers;
select * from orders;

-- 5
select * from payments;
select customerNumber,
case
when amount > 5000 then "High"
when amount between 1000 and 5000 then "Medium"
else "Low"
end as Risk
from payments;

-- 6
select * from orderdetails;
select productCode,
case
when quantityOrdered > 100 then "Large"
when quantityOrdered between 50 and 100 then "Medium"
else "Small"
end as Category
from orderdetails;

-- 7
select * from products;
select productCode, productName,
case
when quantityInStock > 0 then "In Stocks"
else "Out of Stocks"
end as Availability
from products;


-- 8
select * from offices;
select 