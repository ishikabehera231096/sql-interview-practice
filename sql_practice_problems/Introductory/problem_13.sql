-- Problem 13:
-- Section: Introductory
--  Calculate the TOtal Price of item
SELECT OrderID,ProductID,UnitPrice,Quantity,(UnitPrice * Quantity) as TotalPrice
FROM OrderDetails
ORDER BY OrderID,ProductID