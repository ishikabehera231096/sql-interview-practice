-- Problem 31:
-- Section: Intermediary
-- Customers with no orders for EmployeeID = 4

SELECT C.CustomerID
FROM Customers C
WHERE NOT EXISTS (
    SELECT 1
    FROM Orders O
    WHERE O.CustomerID = C.CustomerID
      AND O.EmployeeID = 4
);


