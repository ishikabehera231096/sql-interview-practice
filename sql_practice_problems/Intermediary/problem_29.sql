-- Problem 29:
-- Section: Intermediary
-- Show inventory list
SELECT E.EmployeeID,E.LastName,O.OrderID,P.ProductName,OD.Quantity
FROM Employees AS E
JOIN Orders AS O
ON E.EmployeeID = O.EmployeeID
JOIN OrderDetails AS OD 
ON O.OrderID = OD.OrderID
JOIN Products AS P 
ON OD.ProductID = P.ProductID
ORDER BY O.OrderID,P.ProductID