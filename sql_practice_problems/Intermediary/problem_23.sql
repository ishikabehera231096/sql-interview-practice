-- Problem 23:
-- Section: Intermediary
-- Products that need reordering and are in production
SELECT ProductID,ProductName,UnitsInStock,UnitsOnOrder,ReorderLevel,Discontinued
FROM Products
WHERE (UnitsInStock+UnitsOnOrder) <= ReorderLevel
AND Discontinued = 0
ORDER BY ProductID