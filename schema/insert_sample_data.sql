INSERT INTO Categories (CategoryName, Description) VALUES
('Beverages', 'Soft drinks, coffees, teas'),
('Condiments', 'Sweet and savory sauces'),
('Produce', 'Dried fruit and bean curd');

INSERT INTO Customers VALUES
('ALFKI','Alfreds Futterkiste','Maria Anders','Sales Rep',
 'Obere Str. 57','Berlin',NULL,'12209','Germany','030-0074321',NULL),
('ANATR','Ana Trujillo Emparedados','Ana Trujillo','Owner',
 'Avda. de la Constitución 2222','México D.F.',NULL,'05021','Mexico','(5) 555-4729',NULL),
('BONAP','Bon app','Laurence Lebihan','Owner',
 '12, rue des Bouchers','Marseille',NULL,'13008','France','91.24.45.40',NULL);

INSERT INTO Employees
(LastName, FirstName, Title, TitleOfCourtesy, BirthDate, HireDate, City, Country)
VALUES
('Davolio','Nancy','Sales Representative','Ms.','1968-12-08','2012-05-01','Seattle','USA'),
('Fuller','Andrew','Vice President','Dr.','1952-02-19','2010-08-14','Tacoma','USA'),
('Leverling','Janet','Sales Representative','Ms.','1980-08-30','2015-04-01','Kirkland','USA');


INSERT INTO Shippers (CompanyName, Phone) VALUES
('Speedy Express','(503) 555-9831'),
('United Package','(503) 555-3199');


INSERT INTO Suppliers
(CompanyName, ContactName, ContactTitle, City, Country, Phone)
VALUES
('Exotic Liquids','Charlotte Cooper','Purchasing Manager','London','UK','(171) 555-2222'),
('New Orleans Cajun Delights','Shelley Burke','Order Administrator','New Orleans','USA','(100) 555-4822');


INSERT INTO Products
(ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued)
VALUES
('Chai',1,1,'10 boxes x 20 bags',18.00,39,0,10,false),
('Chang',1,1,'24 - 12 oz bottles',19.00,17,40,25,false),
('Aniseed Syrup',2,2,'12 - 550 ml bottles',10.00,13,70,25,false);

INSERT INTO Orders
(CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipCity, ShipCountry)
VALUES
('ALFKI',1,'2024-01-10','2024-01-20','2024-01-15',1,29.46,'Alfreds Futterkiste','Berlin','Germany'),
('ANATR',2,'2024-02-05','2024-02-15','2024-02-10',2,11.61,'Ana Trujillo Emparedados','México D.F.','Mexico');

INSERT INTO OrderDetails VALUES
(1,1,18.00,10,0.00),
(1,2,19.00,5,0.10),
(2,3,10.00,20,0.00);

INSERT INTO CustomerGroupThresholds VALUES
('Low',0,1000),
('Medium',1000,5000),
('High',5000,999999);

