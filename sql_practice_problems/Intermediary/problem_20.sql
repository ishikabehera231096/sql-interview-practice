-- Problem 20:
-- Section: Intermediary
-- Return total number of products in each category
SELECT C.CategoryName,COUNT(P.ProductID) AS TotalNumberofProducts
FROM Products AS P
JOIN Categories AS C
ON P.CategoryID= C.CategoryID
GROUP BY C.CategoryName
ORDER BY TotalNumberofProducts DESC