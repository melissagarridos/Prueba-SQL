INSERT INTO Product (ProductID, ProductName, Category)
VALUES
(1, 'Casco Industrial', 'EPP'),
(2, 'Disco de Corte 4.5', 'Herramienta'),
(3, 'Electrodo E6013', 'Consumible'),
(4, 'Guantes de Nitrilo', 'EPP'),
(5, 'Soldadura E6013', 'Consumible');

SELECT * FROM product

INSERT INTO Suppliers (SupplierID, SupplierName, SupplierCity)
VALUES
(1, 'Aceros del Norte S.A.S', 'Cartagena'),
(2, 'Aceros Norte', 'Cartagena'),
(3, 'Industriales S.A.S', 'Barranquilla'),
(4, 'Suministros Global SAS', 'Santa Marta');

SELECT * FROM Suppliers

INSERT INTO Warehouse (WarehouseID, Warehouse, WarehouseCity)
VALUES
(1, 'Bodega Central', 'Barranquilla'),
(2, 'Bodega Costa', 'Santa Marta'),
(3, 'Centro Logistico Norte', 'Cartagena');

SELECT * FROM Warehouse


INSERT INTO PurchaseOrder (poid, purchaseorder, quantity, unitprice, productid, supplierid)
values
(1, 'PO-1009',87,123108, 3, 4),
(2, 'PO-1022',70,14290, 4, 3),
(3, 'PO-1023',199,118291, 2, 1),





