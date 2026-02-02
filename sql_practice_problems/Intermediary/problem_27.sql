-- Problem 1:
-- Section: Introductory
-- Return all the fields from shipper table


Select ShipCountry,avg(freight) as AverageFreight
From Orders 
WHERE OrderDate >= '1996-01-01' AND OrderDate <  '1996-12-31'
Group By ShipCountry
Order By AverageFreight desc
LIMIT 3 
