-- Problem 19:
-- Section: Introductory
-- List fo orders whose orderid is less than 10300
SELECT O.OrderID,DATE(O.OrderDate) AS ORDER_DATE,S.CompanyName
FROM Orders AS O
JOIN Shippers AS S
ON O.ShipVia = S.ShipperID
WHERE O.OrderID < 10300
ORDER BY O.OrderID


