-- Problem 28:
-- Section: Intermediary
--High Frieght charges last 12 months
SELECT ShipCountry,
       AVG(Freight) AS AvgFreight
FROM Orders
WHERE OrderDate >= (
    SELECT DATE(MAX(OrderDate), '-12 months')
    FROM Orders
)
GROUP BY ShipCountry
ORDER BY AvgFreight DESC
LIMIT 3;


