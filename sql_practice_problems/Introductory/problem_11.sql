-- Problem 11:
-- Section: Introductory
-- Employees order of birthdate
SELECT FirstName,LastName,Title,DATE(BirthDate) AS BirthdayDate
FROM Employees
ORDER BY BirthDate