-- Problem 1:
-- Section: Introductory
-- High Freight charges
SELECT ShipCountry,AVG(Freight) AS AVGFreight
FROM Orders
GROUP BY ShipCountry
ORDER BY AVGFreight DESC
LIMIT 3