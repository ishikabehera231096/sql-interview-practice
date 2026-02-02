-- Problem 12:
-- Section: Introductory
-- List of employees with First Name and last name joined together
SELECT FirstName,LastName,FirstName || ' ' || LastName as FullName
FROM Employees