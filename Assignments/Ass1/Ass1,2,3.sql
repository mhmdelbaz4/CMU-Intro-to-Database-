---q1 : List all Category Names ordered alphabetically
select CategoryName 
from Categories 
order by CategoryName


--q2 :Get all unique ShipNames from the Order table that contain a hyphen '-'
select distinct ShipName 
from Orders
where ShipName like '%-%'
order by ShipName

--q3 :
--indicate if an order's ShipCountry is in North America.For our purposes, this is 'USA', 'Mexico', 'Canada'
--Details: You should print the Order Id, ShipCountry, and another column that is either
--'NorthAmerica' or 'OtherPlace' depending on the Ship Country.
--Order by the primary key (Id) ascending and return 20 rows starting from Order Id 15445 

select top(20) OrderID ,ShipCountry,
				case 
				when ShipCountry in ('USA', 'Mexico', 'Canada') then 'NorthAmerica'
				else  'OtherPlace'
				end
from Orders
where OrderID >= 15445
order by OrderID Asc

