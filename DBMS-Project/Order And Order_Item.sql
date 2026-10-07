CREATE TABLE Orders (
    Order_ID NUMBER PRIMARY KEY,
    Customer_ID NUMBER,
    Order_Date DATE NOT NULL,
    Total_Amount NUMBER(10,2) NOT NULL,
    CONSTRAINT fk_orders_customer
    FOREIGN KEY (Customer_ID)
    REFERENCES Customer(Customer_ID)
);

Table created.


INSERT INTO Orders
    (Order_ID, Customer_ID, Order_Date, Total_Amount)
     VALUES (205, 105, TO_DATE('14-SEP-2026','DD-MON-YYYY'), 2750.00);

1 row created.


INSERT INTO Orders
   (Order_ID, Customer_ID, Order_Date, Total_Amount)
   VALUES (206, 106, TO_DATE('15-SEP-2026','DD-MON-YYYY'), 1950.00);

1 row created.


INSERT INTO Orders
   (Order_ID, Customer_ID, Order_Date, Total_Amount)
    VALUES (207, 107, TO_DATE('16-SEP-2026','DD-MON-YYYY'), 3400.00);

1 row created.


INSERT INTO Orders
    (Order_ID, Customer_ID, Order_Date, Total_Amount)
    VALUES (208, 108, TO_DATE('17-SEP-2026','DD-MON-YYYY'), 1250.00);

1 row created.


COMMIT;

Commit complete.


SELECT * FROM Orders;

ORDER_ID  CUSTOMER_ID  ORDER_DATE  TOTAL_AMOUNT
--------  -----------  ----------  ------------
     205          105  14-SEP-26       2750.00
     206          106  15-SEP-26       1950.00
     207          107  16-SEP-26       3400.00
     208          108  17-SEP-26       1250.00


CREATE TABLE Order_Details (
    Order_Detail_ID NUMBER PRIMARY KEY,
    Order_ID NUMBER,
    Product_ID NUMBER,
    Quantity NUMBER NOT NULL,
    Unit_Price NUMBER(10,2) NOT NULL,
    Subtotal NUMBER(10,2) NOT NULL,
    CONSTRAINT fk_orderdetails_order
    FOREIGN KEY (Order_ID)
    REFERENCES Orders(Order_ID),
    CONSTRAINT fk_orderdetails_product
    FOREIGN KEY (Product_ID)
    REFERENCES Product(Product_ID)
);

Table created.


INSERT INTO Order_Details
  (Order_Detail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Subtotal)
   VALUES (6, 205, 102, 1, 350.00, 350.00);

1 row created.


INSERT INTO Order_Details
   (Order_Detail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Subtotal)
    VALUES (7, 206, 103, 2, 450.00, 900.00);

1 row created.


INSERT INTO Order_Details
   (Order_Detail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Subtotal)
    VALUES (8, 207, 104, 3, 299.00, 897.00);

1 row created.


INSERT INTO Order_Details
   (Order_Detail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Subtotal)
    VALUES (9, 208, 105, 2, 399.00, 798.00);

1 row created.


COMMIT;

Commit complete.


SELECT * FROM Order_Details;

ORDER_DETAIL_ID  ORDER_ID  PRODUCT_ID  QUANTITY  UNIT_PRICE  SUBTOTAL
---------------  --------  ----------  --------  ----------  --------
              6       205         102         1      350.00    350.00
              7       206         103         2      450.00    900.00
              8       207         104         3      299.00    897.00
              9       208         105         2      399.00    798.00