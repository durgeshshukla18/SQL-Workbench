-- ---------------------------- having practice sheet ----------------------------------

use classicmodels;

select * from products;

-- 1. Products by Vendor: Which product vendors have an average MSRP greater than $100?
select productVendor, avg(MSRP) as average
from products
group by productCode
having average > 100;

-- 2. Products by Scale: Which product scales have a total quantity in stock of more than 500 units?
select productScale, sum(quantityInStock) as total
from products
group by productCode
having total > 500;

-- 3. Product Lines: Which product lines have an average buy price greater than $50?
select * from products;
select productLine, avg(buyPrice) as average
from products
group by productCode
having average > 50;

-- 4. Offices by Country: Which countries have more than 3 offices?
select * from offices;
select officeCode, count(country)
from offices
group by officeCode
having count(country) > 3;

-- 5. Employees by Job Title: Which job titles have more than 5 employees?
select * from employees;
select jobTitle, count(jobTitle)
from employees
group by jobTitle
having count(jobTitle) > 5;

-- 6. Customers by Country: Which countries have a total credit limit exceeding $500,000?
select * from customers;
select country, sum(creditLimit) as total
from customers
group by country
having total > 500000;

-- 7. Payments by Customer: Which customers have made total payments exceeding $10,000?
select * from payments;
select customerNumber, sum(amount) as total_payment
from payments
group by customerNumber
having total_payment > 10000;

-- 8. Orders by Status: Which order statuses have more than 100 orders?
select * from orders;
select orderNumber, count(status) as order_count
from orders
group by orderNumber
having order_count > 100;

-- 9. Orders by Date: Which order dates have more than 10 orders?
select orderNumber, count(orderDate) as order_count
from orders
group by orderNumber
having order_count > 10;

-- 10. OrderDetails by Product: Which products have a total quantity ordered of more than 200 units?
select * from orderdetails;
select productCode, sum(quantityOrdered) as order_sum
from orderdetails
group by productCode
having order_sum > 200;

-- 11. Employees by Office: Which offices have more than 10 employees?
select * from employees;
select officeCode, count(officeCode)
from employees
group by officeCode
having count(officeCode) > 10;

-- 12. Customers by State: Which states have a total number of customers greater than 50?
select * from customers;
select state, count(customerNumber) as customerCount
from customers
group by state
having customerCount > 50;

-- 13. Orders by Customer: Which customers have placed more than 20 orders?
select * from orders;
select customerNumber, count(orderNumber) as orderCount
from orders
group by customerNumber
having orderCount > 20;

-- 14. OrderDetails by Order: Which orders have a total quantity ordered greater than 100 units?
select * from orderdetails;
select orderNumber, sum(quantityOrdered) as total_order
from orderdetails
group by orderNumber
having total_order > 100;

-- 15. Payments by Date: Which payment dates have a total amount paid exceeding $5,000?
select * from payments;
select paymentDate, sum(amount) as total_amount
from payments
group by paymentDate
having total_amount > 5000;

-- 16. Product Lines by Description Length: Which product lines have an average product description length greater than 200 characters?
select * from productlines;
select productLine, length(textDescription) as desc_length
from productlines
group by productLine
having desc_length > 200;

-- 17. Product Vendors by Buy Price: Which product vendors have an average buy price greater than $75?
select * from products;
select productVendor, avg(buyPrice) as average
from products
group by productVendor
having average > 75;

-- 18. Customers by City: Which cities have more than 20 customers?
select * from customers;
select city, count(customerNumber) as customer_count
from customers
group by city
having customer_count > 20;

-- 19. Employees by Supervisor: Which supervisors (reportsTo) have more than 5 direct reports?
select * from employees;


-- 20. Products by Quantity in Stock: Which products have an average quantity in stock greater than 100 units?
select * from products;

