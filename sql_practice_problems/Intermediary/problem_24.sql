-- Problem 24:
-- Section: Intermediary
-- Customer list by region sort null to the bottom
SELECT CustomerID,CompanyName,Region
FROM Customers
ORDER BY CASE 
    WHEN Region IS NULL THEN 1 ELSE 0
END,Region,CustomerID
