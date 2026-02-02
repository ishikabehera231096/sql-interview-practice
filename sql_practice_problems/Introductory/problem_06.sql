-- Problem 6:
-- Section: Introductory
-- List of Suppliers who are not Marketing Manager
SELECT SupplierID,ContactName,ContactTitle
FROM Suppliers
WHERE ContactTitle != 'Marketing Manager'