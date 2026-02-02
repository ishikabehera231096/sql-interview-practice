-- Problem 18:
-- Section: Introductory
--Show the supplier for each associated product
SELECT P.ProductID,P.ProductName,S.CompanyName
FROM Products AS P
JOIN Suppliers AS S
ON P.SupplierID = S.SupplierID