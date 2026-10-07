CREATE TABLE Seller (
    Seller_ID NUMBER PRIMARY KEY,
    Seller_Name VARCHAR2(100) NOT NULL,
    Phone VARCHAR2(15),
    Email VARCHAR2(100),
    Address VARCHAR2(200)
);

Table created.


CREATE TABLE Inventory (
    Inventory_ID NUMBER PRIMARY KEY,
    Seller_ID NUMBER,
    Product_ID NUMBER,
    Stock NUMBER,
    Status VARCHAR2(20),
    FOREIGN KEY (Seller_ID) REFERENCES Seller(Seller_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);

Table created.


INSERT INTO Seller VALUES
   (201, 'Lakshmi Stores', '9876543210', 'Lakshmi@gmail.com', 'Chennai');

1 row created.


INSERT INTO Seller VALUES
  (202, 'Beauty Hub', '9876543211', 'beautyhub@gmail.com', 'Coimbatore');

1 row created.


INSERT INTO Seller VALUES
  (203, 'Glow Mart', '9876543212', 'glowmart@gmail.com', 'Madurai');

1 row created.


INSERT INTO Seller VALUES
  (204, 'Style World', '9876543213', 'styleworld@gmail.com', 'Salem');

1 row created.


INSERT INTO Seller VALUES
  (205, 'Care Point', '9876543214', 'carepoint@gmail.com', 'Trichy');

1 row created.


COMMIT;

Commit complete.


INSERT INTO Inventory VALUES
  (1, 201, 102, 60, 'Available');

1 row created.


INSERT INTO Inventory VALUES
   (2, 202, 103, 30, 'Available');

1 row created.


INSERT INTO Inventory VALUES
  (3, 203, 104, 25, 'Available');

1 row created.


INSERT INTO Inventory VALUES
  (4, 204, 105, 0, 'Unavailable');

1 row created.


INSERT INTO Inventory VALUES
   (5, 205, 102, 0, 'Unavailable');

1 row created.


COMMIT;

Commit complete.


SELECT
    s.Seller_Name,
    p.Product_Name,
    i.Stock AS Stock_Quantity,
    i.Status AS Stock_Status
    FROM Seller s
    JOIN Inventory i
    ON s.Seller_ID = i.Seller_ID
    JOIN Product p
    ON i.Product_ID = p.Product_ID
    ORDER BY s.Seller_Name;


SELLER_NAME
--------------------------------
PRODUCT_NAME
--------------------------------
STOCK_QUANTITY STOCK_STATUS
-------------- ----------------
Beauty Hub
Shampoo
30             Available

Care Point
Moisturizer
0              Unavailable

Glow Mart
Lipstick
25             Available

Lakshmi Stores
Moisturizer
60             Available

Style World
Body Lotion
0              Unavailable


SELECT
    p.Product_ID,
    p.Product_Name,
    i.Stock AS Stock_Quantity,
    i.Status AS Stock_Status
    FROM Product p
    JOIN Inventory i
    ON p.Product_ID = i.Product_ID
    WHERE i.Status = 'Available';


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------
STOCK_QUANTITY STOCK_STATUS
-------------- ----------------
102
Moisturizer
60             Available

103
Shampoo
30             Available

104
Lipstick
25             Available


SELECT
    p.Product_ID,
    p.Product_Name,
    i.Stock AS Stock_Quantity,
    i.Status AS Stock_Status
    FROM Product p
    JOIN Inventory i
    ON p.Product_ID = i.Product_ID
    WHERE i.Status = 'Unavailable';


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------
STOCK_QUANTITY STOCK_STATUS
-------------- ----------------
105
Body Lotion
0              Unavailable

102
Moisturizer
0              Unavailable


UPDATE Inventory
    SET Stock = 30,
    Status = 'Available'
    WHERE Inventory_ID = 3;

1 row updated.


SELECT
    i.Inventory_ID,
    s.Seller_Name,
    p.Product_ID,
    p.Product_Name,
    i.Stock,
    i.Status
    FROM Inventory i
    JOIN Seller s
    ON i.Seller_ID = s.Seller_ID
    JOIN Product p
    ON i.Product_ID = p.Product_ID
    ORDER BY i.Inventory_ID;


SELECT
    Status AS Stock_Status,
    COUNT(*) AS Total_Products
    FROM Inventory
    GROUP BY Status;


STOCK_STATUS       TOTAL_PRODUCTS
----------------- --------------
Available                       2
Unavailable                     3


SELECT
    s.Seller_ID,
    s.Seller_Name,
    SUM(i.Stock) AS Total_Stock
    FROM Seller s
    JOIN Inventory i
    ON s.Seller_ID = i.Seller_ID
    GROUP BY s.Seller_ID, s.Seller_Name
    ORDER BY s.Seller_ID;


SELLER_ID
---------
SELLER_NAME
--------------------------------
TOTAL_STOCK
-----------
201
Lakshmi Stores
60

202
Beauty Hub
30

203
Glow Mart
30

204
Style World
0

205
Care Point
0


SELECT
    p.Product_ID,
    p.Product_Name,
    i.Stock,
    i.Status
    FROM Product p
    JOIN Inventory i
    ON p.Product_ID = i.Product_ID
    WHERE i.Stock = 0;


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------
STOCK STATUS
----- ----------------
104
Lipstick
0     Unavailable