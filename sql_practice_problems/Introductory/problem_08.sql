-- Problem 8:
-- Section: Introductory
--List of Orders from France or Belgium
SELECT OrderID,CustomerID,ShipCountry
FROM Orders
WHERE ShipCountry in ('France','Belgium')