/*Query 1
• Available stock by product.
o Business need:
▪ As the inventory manager, I need to know current stock levels
for each product to plan future purchases.*/
  
SELECT 
    P.productname,
    PO.productid, 
    SUM(PO.quantity) AS TotalQuantity
FROM PURCHASEORDER PO
JOIN PRODUCT P ON PO.productid = P.productid
WHERE PO.productid > 1
GROUP BY P.productname, PO.productid;

  
/*Query 2
• Inventory movements with product and warehouse details.
o Business need:
▪ As the logistics supervisor, I need to know the movements
carried out in each warehouse and the products involved.*/
SELECT 
    W.warehouseid,
    PO.productid, 
    P.productname,
    W.warehouse,
    SUM(PO.quantity) AS TotalQuantity
FROM PURCHASEORDER PO
JOIN MOVEMENT M ON PO.poid = M.poid
JOIN WAREHOUSE W ON M.warehouseid = W.warehouseid
JOIN PRODUCT P ON PO.productid = P.productid
GROUP BY W.warehouseid, PO.productid, P.productname, W.warehouse;

/*

Query 3
• Total purchased by supplier.
o Business need:
▪ As the person responsible for purchasing, I need to identify how much
has been purchased from each supplier.*/

SELECT 
    s.supplierid,
    s.suppliername, 
    SUM(PO.quantity) AS TotalQuantity
FROM PURCHASEORDER PO
JOIN SUPPLIERS S ON PO.supplierid = S.supplierid
GROUP BY s.supplierid, s.suppliername, po.quantity;

/*
  
Query 4
• Number of transactions recorded by warehouse.
o Business need:
▪ As an operations administrator, I need to know which warehouses
show the highest activity.*/

SELECT 
    W.warehouseid,
    W.warehouse,
    COUNT(M.movementid) AS TotalMovements
FROM MOVEMENT M
JOIN WAREHOUSE W ON M.warehouseid = W.warehouseid
GROUP BY W.warehouseid, W.warehouse;

/*
Query 5
• Product with the highest purchase volume.
o Business need:
▪ As an analyst, I need to identify the product that generates the
highest turnover within the organization.*/

SELECT 
    p.productid,
    p.productname,
    COUNT(po.quantity) AS TotalPurchases
FROM purchaseorder PO
JOIN PRODUCT P ON PO.productid = P.productid
GROUP BY P.productid, P.productname;


/*
  
Query 6
• Total value of inventory stored by warehouse.
o Business need:
▪ As an operations manager, I need to know the economic value
of the inventory distributed across each warehouse./*










