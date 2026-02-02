-- Problem 9:
-- Section: Introductory
-- List of orders from latin American countries
SELECT OrderID,CustomerID,ShipCountry
FROM Orders
WHERE ShipCountry in ('Brazil','Mexico','Argentina','Venezuela')