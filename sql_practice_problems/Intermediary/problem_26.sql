-- Problem 1:
-- Section: Introductory
-- High Freight charges from the year 1997
SELECT ShipCountry,AVG(Freight) AS AVGFreight
FROM Orders
WHERE OrderDate BETWEEN '1996-01-01' AND '1996-12-31'
GROUP BY ShipCountry
ORDER BY AVGFreight DESC
LIMIT 3



