-- Problem 21:
-- Section: Intermediary
-- Show total number of customers per country per city
SELECT Country,City,COUNT(CustomerID) AS TotalCustomerperCountryperCity
FROM Customers
GROUP BY COUNTRY,CITY
ORDER BY TotalCustomerperCountryperCity DESC