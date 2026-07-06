
CREATE DATABASE RiwiSupply;



CREATE TABLE Suppliers(
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(100),
    SupplierCity VARCHAR(100)
);

CREATE TABLE Product(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(100)
);

CREATE TABLE Warehouse(
    WarehouseID INT PRIMARY KEY,
    Warehouse VARCHAR(100),
    WarehouseCity VARCHAR(100)
);

CREATE TABLE PurchaseOrder (
    POID INT PRIMARY KEY,
    PurchaseOrder VARCHAR(100),
    Quantity INT,
    UnitPrice DECIMAL(10, 2),
    ProductID INT,
    SupplierID INT,
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);

CREATE TABLE Movement (
    MovementID INT PRIMARY KEY,
    MovementType VARCHAR(100),
    MovementDate DATE,
    POID INT,
    WarehouseID INT,
    ProductID INT,
    FOREIGN KEY (POID) REFERENCES PurchaseOrder(POID),
    FOREIGN KEY (WarehouseID) REFERENCES Warehouse(WarehouseID)
    FOREIGN KEY (POID) REFERENCES PurchaseOrder(ProductID);
);

