-- Problem 22:
-- Section: Intermediary
-- What products are in the inventory that should be reordered?
SELECT ProductID,ProductName,UnitsInStock,ReorderLevel
FROM Products
WHERE UnitsInStock <= ReorderLevel
ORDER BY ProductID