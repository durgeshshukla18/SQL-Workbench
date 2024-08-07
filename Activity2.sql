create database activity2;
use activity2;

select * from carsales;

select make, model, SalePrice from carsales;

select * from carsales where CountryName = "United Kingdom";

select * from carsales wherarithematice CountryName = "United Kingdom" and SalePrice > 90000;

select * from carsales where Make = "Rolls Royce" or Make = "Aston Martin";

select * from carsales order by SalePrice desc;

select distinct(Make) from carsales;

select * from carsales where Model like "Silver%";

select * from carsales where Region = "East Midlands" or Region = "Greater London Authority";

select * from carsales where SalePrice between 80000 and 100000;

select * from carsales where isDealer is null;

select * from carsales where TotalDiscount is not null;

select Make, model, (SalePrice - CostPrice) as profit from carsales;

select sum(SalePrice) from  carsales;

select avg(SalePrice) from carsales;

select count(Make) from carsales;

select Make from carsales where avg(saleprice) > 90000;

-- --19
select make, model, count(make) from carsales group by make, model;

select avg(SalePrice) as average from carsales where SalePrice > average;


-- -------------------------------------------------------------------------------------------

select * from carsales where SalePrice > CostPrice;

select * from carsales where CountryName = "United Kingdom" and SalePrice > 80000;

select * from carsales where make = "Roll Royce" or Color = "Red";

select * from carsales order by CountryName, SalePrice desc;

select distinct(Color) from carsales;

select * from carsales where Make like "%Royce%";

select * from carsales where Make = "Aston Martin" or Make = "Rolls Royce";

select * from carsales where InvoiceDate between '2012-01-01' and '2012-12-31';

select * from carsales where IsDealer is null;

select * from carsales where TotalDiscount is not null;

select Make, Model, (SalePrice + DeliveryCharge) as TotalCost from carsales;

select * from carsales;

select make, model, SalePrice from carsales order by SalePrice desc limit 10;

select * from carsales where Model like"%Ghost";

select * from carsales where length(Region) > 10;

select * from carsales where (SalePrice - CostPrice) > 10000;

select * from carsales where CountryName != "United Kingdom"; 

select Make, Model, (SalePrice - CostPrice) as Profit from carsales;

select * from carsales where InvoiceDate like '2012%';

select* from carsales where CountryName = "United Kingdom" and (SalePrice > 80000 or Color= "Red");


-- --------------------------------------------------------------------------------------
select * from carsales;

select * from carsales where (SalePrice > CostPrice) and (TotalDiscount > 500) and (Color != "Red");

select * from carsales where (Make = "Rolls Royce" and SalePrice > 90000) or (Make = "Aston Martin" or SalePrice < 100000);

select Make, Model, Color from carsales where (((SalePrice - CostPrice ) >= 20000) and (TotalDiscount <= 1000));

select Make, Model, Color from carsales where Model like "Silver%"; -- Uppercase function is not taught.

select * from carsales where (InvoiceDate like "2012%") and (DeliveryCharge between 500 and 1500);

select * from carsales order by CountryName desc, Make desc, SalePrice desc;

-- 7. Not taught....alter

select * from carsales where (length(Make) > 5) and (Color like "%Yellow%");

select Make, Model, (SalePrice - CostPrice - DeliveryCharge) as NetProfit from carsales;

select * from carsales where Make != "Rolls Royce" and SalePrice not between 80000 and 100000;

select * from carsales where (IsDealer is null) and (SalePrice - TotalDiscount) > 85000;

-- 12. Rounded value not taught.

-- 15...
select * from carsales where (SalePrice > CostPrice) and (Make = "Rolls Royce" or Make = "Auston Martin") and (Color != "Blue");

select * from carsales where ((SalePrice + DeliveryCharge) < 100000) and CountryName = "United Kingdo";

-- 18
select * from carsales where InvoiceDate like "%01%" and Model like "%S%";

-- 20.
select Make, Model, (SalePrice - TotalDiscount) as DiscountedPrice from carsales;








