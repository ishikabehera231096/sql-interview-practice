-- Problem 4:
-- Section: Introductory
-- List of the first name, last name and hire date of sales representative with sales of representative title and are from united states
SELECT FirstName,LastName,HireDate
From Employees
WHERE Title = 'Sales Representative' and Country = 'USA'