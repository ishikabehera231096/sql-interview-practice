-- =========================
-- Categories
-- =========================
CREATE TABLE Categories (
    CategoryID INTEGER PRIMARY KEY,
    CategoryName VARCHAR(50),
    Description TEXT
);

-- =========================
-- Customers
-- =========================
CREATE TABLE Customers (
    CustomerID CHAR(5) PRIMARY KEY,
    CompanyName VARCHAR(50),
    ContactName VARCHAR(50),
    ContactTitle VARCHAR(50),
    Address VARCHAR(100),
    City VARCHAR(50),
    Region VARCHAR(50),
    PostalCode VARCHAR(20),
    Country VARCHAR(50),
    Phone VARCHAR(30),
    Fax VARCHAR(30)
);

-- =========================
-- Employees
-- =========================
CREATE TABLE Employees (
    EmployeeID INTEGER PRIMARY KEY,
    LastName VARCHAR(50),
    FirstName VARCHAR(50),
    Title VARCHAR(50),
    TitleOfCourtesy VARCHAR(10),
    BirthDate DATE,
    HireDate DATE,
    Address VARCHAR(100),
    City VARCHAR(50),
    Region VARCHAR(50),
    PostalCode VARCHAR(20),
    Country VARCHAR(50),
    HomePhone VARCHAR(30),
    Extension VARCHAR(10),
    Notes TEXT,
    ReportsTo INTEGER REFERENCES Employees(EmployeeID)
);

-- =========================
-- Shippers
-- =========================
CREATE TABLE Shippers (
    ShipperID INTEGER PRIMARY KEY,
    CompanyName VARCHAR(50),
    Phone VARCHAR(30)
);

-- =========================
-- Suppliers
-- =========================
CREATE TABLE Suppliers (
    SupplierID INTEGER PRIMARY KEY,
    CompanyName VARCHAR(50),
    ContactName VARCHAR(50),
    ContactTitle VARCHAR(50),
    Address VARCHAR(100),
    City VARCHAR(50),
    Region VARCHAR(50),
    PostalCode VARCHAR(20),
    Country VARCHAR(50),
    Phone VARCHAR(30),
    Fax VARCHAR(30),
    HomePage TEXT
);

-- =========================
-- Products
-- =========================
CREATE TABLE Products (
    ProductID INTEGER PRIMARY KEY,
    ProductName VARCHAR(50),
    SupplierID INTEGER REFERENCES Suppliers(SupplierID),
    CategoryID INTEGER REFERENCES Categories(CategoryID),
    QuantityPerUnit VARCHAR(50),
    UnitPrice DECIMAL(10,2),
    UnitsInStock INTEGER,
    UnitsOnOrder INTEGER,
    ReorderLevel INTEGER,
    Discontinued BOOLEAN
);

-- =========================
-- Orders
-- =========================
CREATE TABLE Orders (
    OrderID INTEGER PRIMARY KEY,
    CustomerID CHAR(5) REFERENCES Customers(CustomerID),
    EmployeeID INTEGER REFERENCES Employees(EmployeeID),
    OrderDate DATE,
    RequiredDate DATE,
    ShippedDate DATE,
    ShipVia INTEGER REFERENCES Shippers(ShipperID),
    Freight DECIMAL(10,2),
    ShipName VARCHAR(50),
    ShipAddress VARCHAR(100),
    ShipCity VARCHAR(50),
    ShipRegion VARCHAR(50),
    ShipPostalCode VARCHAR(20),
    ShipCountry VARCHAR(50)
);

-- =========================
-- OrderDetails
-- =========================
CREATE TABLE OrderDetails (
    OrderID INTEGER REFERENCES Orders(OrderID),
    ProductID INTEGER REFERENCES Products(ProductID),
    UnitPrice DECIMAL(10,2),
    Quantity INTEGER,
    Discount DECIMAL(4,2),
    PRIMARY KEY (OrderID, ProductID)
);

-- =========================
-- CustomerGroupThresholds
-- =========================
CREATE TABLE CustomerGroupThresholds (
    CustomerGroupName VARCHAR(20),
    RangeBottom DECIMAL(10,2),
    RangeTop DECIMAL(10,2)
);
