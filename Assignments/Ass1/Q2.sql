--Q2 : Get all unique ShipNames from the Order table that contain a hyphen '-'

select Distinct ShipName
from Orders
where ShipName like '%-%'
order by ShipName
