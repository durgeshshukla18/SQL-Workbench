use classicmodels;

select status from orders group by status;

SELECT 
  status, 
  COUNT(*) 
FROM 
  orders 
GROUP BY 
  status;
  
  SELECT 
  orderNumber, 
  SUM(quantityOrdered * priceEach) AS total 
FROM 
  orderdetails 
GROUP BY 
  orderNumber;
  
  
  
  -- -------------------- HAVING ----------------------------
  
  select * from orderdetails;
  
SELECT ordernumber, 
  SUM(quantityOrdered) AS itemsCount, 
  SUM(priceeach * quantityOrdered) AS total 
FROM 
  orderdetails 
GROUP BY 
  ordernumber;
  
  SELECT 
  ordernumber, 
  count(quantityOrdered) AS itemsCount, 
  SUM(priceeach * quantityOrdered) AS total 
FROM 
  orderdetails 
GROUP BY 
  ordernumber;
  
select orderNumber, sum(quantityOrdered * priceEach) as total
from orderdetails
group by orderNumber
having total > 1000;

SELECT 
    ordernumber,
    SUM(quantityOrdered) AS itemsCount,
    SUM(priceeach*quantityOrdered) AS total
FROM
    orderdetails
GROUP BY ordernumber
HAVING 
    total > 1000 AND 
    itemsCount > 600;
    
select * from payments;

-- Which customers have made total payments exceeding $50,000?
select customerNumber, sum(amount) as total
from payments
group by customerNumber
having total > 50000;

-- Which customers have made more than 3 payments?
select customerNumber, count(*) as countPayment
from payments
group by customerNumber
having countPayment > 3;

-- Which customers have an average payment amount of less than $10,000?
select * from payments;

select customerNumber, avg(amount) as averageAmount
from payments
group by customerNumber
having averageAmount < 10000;

-- Which customers have made payments only before the year 2004?
select customerNumber
from payments
group by customerNumber
having max(paymentDate) < '2004-01-01';
