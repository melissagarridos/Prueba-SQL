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
(4, 'PO-1029',131,71980, 4, 3),
(5, 'PO-1032',185,123653, 4, 4),
(6, 'PO-1034',61,136736, 2, 3),
(7, 'PO-1035',134,89964, 2, 2),
(8, 'PO-1035',119,23022, 4, 3),
(9, 'PO-1036',78,37943, 3, 1),
(10, 'PO-1040',175,39944, 4, 2),
(11, 'PO-1041',27,35506, 3, 1),
(12, 'PO-1041',130,88512, 2, 1),
(13, 'PO-1043',169,18022, 2, 3),
(14, 'PO-1049',148,115388, 2, 1),
(15, 'PO-1059',33,43746, 5, 1),
(16, 'PO-1075',160,117524, 5, 4),
(17, 'PO-1083',192,108802, 1, 1),
(18, 'PO-1091',40,139836, 3, 3),
(19, 'PO-1094',124,52910, 2, 3),


