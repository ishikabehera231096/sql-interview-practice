-- Problem 30:
-- Section: Intermediary
-- Customer with no orders
SELECT C.CustomerID, C.CompanyName
FROM Customers C
LEFT JOIN Orders O
  ON C.CustomerID = O.CustomerID
WHERE O.OrderID IS NULL;