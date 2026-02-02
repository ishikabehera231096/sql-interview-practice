-- Problem 17:
-- Section: Introductory
-- List of all the different values in the customers table for Contact Titles include a count for each
SELECT ContactTitle,COUNT(ContactTitle) as TotalContactTitle
FROM Customers
GROUP BY ContactTitle
ORDER BY TotalContactTitle DESC