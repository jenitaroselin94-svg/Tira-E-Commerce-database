SQL> SELECT
  2      c.Customer_ID,
  3      c.First_Name,
  4      c.Last_Name,
  5      o.Order_ID,
  6      o.Order_Date,
  7      o.Total_Amount
  8  FROM Customer c
  9  INNER JOIN Orders o
 10      ON c.Customer_ID = o.Customer_ID;

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT
------------
        101 Harini
N                                                         201 23-OCT-26
        2500

        102 Priya
S                                                         202 23-OCT-26
        1500

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT
------------

        103 Anitha
R                                                         203 23-OCT-26
        3200

SQL> SELECT
  2      o.Order_ID,
  3      o.Order_Date,
  4      o.Total_Amount,
  5      p.Payment_Mode,
  6      p.Payment_Amount,
  7      p.Payment_Status
  8  FROM Orders o
  9  INNER JOIN Payment p
 10      ON o.Order_ID = p.Order_ID;

  ORDER_ID ORDER_DAT TOTAL_AMOUNT PAYMENT_MODE         PAYMENT_AMOUNT
---------- --------- ------------ -------------------- --------------
PAYMENT_STATUS
--------------------
       201 23-OCT-26         2500 UPI                            2200
Success

       202 23-OCT-26         1500 Card                           1200
Success

       203 23-OCT-26         3200 Net Banking                     850
Success


SQL> SELECT
  2      p.Product_ID,
  3      p.Product_Name,
  4      od.Order_ID,
  5      od.Quantity,
  6      od.Unit_Price,
  7      od.Subtotal
  8  FROM Product p
  9  INNER JOIN Order_Details od
 10      ON p.Product_ID = od.Product_ID;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  ORDER_ID   QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ---------- ----------
       102
Moisturizer
       201          1        500        500

       103
Shampoo
       202          2        900       1800

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  ORDER_ID   QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ---------- ----------

       104
Lipstick
       203          2       1600       3200

       101
Face Wash

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  ORDER_ID   QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ---------- ----------
       201          3       1000       3000


SQL> SELECT
  2      c.Customer_ID,
  3      c.First_Name || ' ' || c.Last_Name AS Customer_Name,
  4      o.Order_ID,
  5      o.Order_Date,
  6      o.Total_Amount
  7  FROM Customer c
  8  LEFT JOIN Orders o
  9      ON c.Customer_ID = o.Customer_ID;

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT TOTAL_AMOUNT
---------- --------- ------------
        101
Harini N
       201 23-OCT-26         2500

        102
Priya S
       202 23-OCT-26         1500

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT TOTAL_AMOUNT
---------- --------- ------------

        103
Anitha R
       203 23-OCT-26         3200

        107
Arun T

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT TOTAL_AMOUNT
---------- --------- ------------


        108
Divya L


        105

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT TOTAL_AMOUNT
---------- --------- ------------
Rahul K


        104
Kavin M



CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT TOTAL_AMOUNT
---------- --------- ------------
        106
Sneha P



8 rows selected.


SQL> SELECT
  2      c.Customer_ID,
  3      c.First_Name || ' ' || c.Last_Name AS Customer_Name,
  4      o.Order_ID,
  5      o.Order_Date,
  6      o.Total_Amount
  7  FROM Customer c
  8  RIGHT JOIN Orders o
  9      ON c.Customer_ID = o.Customer_ID;

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT TOTAL_AMOUNT
---------- --------- ------------
        101
Harini N
       201 23-OCT-26         2500

        102
Priya S
       202 23-OCT-26         1500

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT TOTAL_AMOUNT
---------- --------- ------------

        103
Anitha R
       203 23-OCT-26         3200


SQL> SELECT
  2      c.Customer_ID,
  3      c.First_Name || ' ' || c.Last_Name AS Customer_Name,
  4      o.Order_ID,
  5      o.Order_Date,
  6      p.Product_ID,
  7      p.Product_Name,
  8      od.Quantity,
  9      od.Unit_Price,
 10      od.Subtotal,
 11      py.Payment_Mode,
 12      py.Payment_Amount,
 13      py.Payment_Status
 14  FROM Customer c
 15  INNER JOIN Orders o
 16      ON c.Customer_ID = o.Customer_ID
 17  INNER JOIN Order_Details od
 18      ON o.Order_ID = od.Order_ID
 19  INNER JOIN Product p
 20      ON od.Product_ID = p.Product_ID
 21  INNER JOIN Payment py
 22      ON o.Order_ID = py.Order_ID
 23  ORDER BY o.Order_Date DESC;

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT PRODUCT_ID
---------- --------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
        101

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT PRODUCT_ID
---------- --------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
Harini N

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT PRODUCT_ID
---------- --------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
       201 23-OCT-26        102

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT PRODUCT_ID
---------- --------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
Moisturizer

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT PRODUCT_ID
---------- --------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
         1        500        500 UPI                            2200

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT PRODUCT_ID
---------- --------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
Success

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT PRODUCT_ID
---------- --------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------


CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT PRODUCT_ID
---------- --------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
        103

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT PRODUCT_ID
---------- --------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
Anitha R

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT PRODUCT_ID
---------- --------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
       203 23-OCT-26        104

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT PRODUCT_ID
---------- --------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
Lipstick

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT PRODUCT_ID
---------- --------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
         2       1600       3200 Net Banking                     850

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT PRODUCT_ID
---------- --------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
Success

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT PRODUCT_ID
---------- --------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------


CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT PRODUCT_ID
---------- --------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
        102

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT PRODUCT_ID
---------- --------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
Priya S

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT PRODUCT_ID
---------- --------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
       202 23-OCT-26        103

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT PRODUCT_ID
---------- --------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
Shampoo

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT PRODUCT_ID
---------- --------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
         2        900       1800 Card                           1200

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT PRODUCT_ID
---------- --------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
Success

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT PRODUCT_ID
---------- --------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------


CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT PRODUCT_ID
---------- --------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
        101

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT PRODUCT_ID
---------- --------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
Harini N

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT PRODUCT_ID
---------- --------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
       201 23-OCT-26        101

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT PRODUCT_ID
---------- --------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
Face Wash

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT PRODUCT_ID
---------- --------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
         3       1000       3000 UPI                            2200

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT PRODUCT_ID
---------- --------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
Success

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT PRODUCT_ID
---------- --------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------


SQL> SELECT
  2      c.Customer_ID,
  3      c.First_Name || ' ' || c.Last_Name AS Customer_Name,
  4      o.Order_ID,
  5      o.Order_Date,
  6      p.Product_Name,
  7      od.Quantity,
  8      od.Subtotal
  9  FROM Customer c
 10  INNER JOIN Orders o
 11      ON c.Customer_ID = o.Customer_ID
 12  INNER JOIN Order_Details od
 13      ON o.Order_ID = od.Order_ID
 14  INNER JOIN Product p
 15      ON od.Product_ID = p.Product_ID
 16  ORDER BY c.Customer_ID, o.Order_Date;

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL
---------- ----------
        101
Harini N
       201 23-OCT-26

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL
---------- ----------
Moisturizer
         1        500


CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL
---------- ----------
        101
Harini N
       201 23-OCT-26

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL
---------- ----------
Face Wash
         3       3000


CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL
---------- ----------
        102
Priya S
       202 23-OCT-26

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL
---------- ----------
Shampoo
         2       1800


CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL
---------- ----------
        103
Anitha R
       203 23-OCT-26

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL
---------- ----------
Lipstick
         2       3200


SQL> SELECT
  2      c.Customer_ID,
  3      c.First_Name || ' ' || c.Last_Name AS Customer_Name,
  4      o.Order_ID,
  5      o.Order_Date,
  6      p.Product_Name,
  7      od.Quantity,
  8      od.Subtotal,
  9      py.Payment_Mode,
 10      py.Payment_Status
 11  FROM Customer c
 12  INNER JOIN Orders o
 13      ON c.Customer_ID = o.Customer_ID
 14  INNER JOIN Order_Details od
 15      ON o.Order_ID = od.Order_ID
 16  INNER JOIN Product p
 17      ON od.Product_ID = p.Product_ID
 18  INNER JOIN Payment py
 19      ON o.Order_ID = py.Order_ID
 20  ORDER BY c.Customer_ID;

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL PAYMENT_MODE         PAYMENT_STATUS
---------- ---------- -------------------- --------------------
        101
Harini N
       201 23-OCT-26

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL PAYMENT_MODE         PAYMENT_STATUS
---------- ---------- -------------------- --------------------
Face Wash
         3       3000 UPI                  Success


CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL PAYMENT_MODE         PAYMENT_STATUS
---------- ---------- -------------------- --------------------
        101
Harini N
       201 23-OCT-26

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL PAYMENT_MODE         PAYMENT_STATUS
---------- ---------- -------------------- --------------------
Moisturizer
         1        500 UPI                  Success


CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL PAYMENT_MODE         PAYMENT_STATUS
---------- ---------- -------------------- --------------------
        102
Priya S
       202 23-OCT-26

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL PAYMENT_MODE         PAYMENT_STATUS
---------- ---------- -------------------- --------------------
Shampoo
         2       1800 Card                 Success


CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL PAYMENT_MODE         PAYMENT_STATUS
---------- ---------- -------------------- --------------------
        103
Anitha R
       203 23-OCT-26

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL PAYMENT_MODE         PAYMENT_STATUS
---------- ---------- -------------------- --------------------
Lipstick
         2       3200 Net Banking          Success


SQL> SELECT
  2      c.First_Name || ' ' || c.Last_Name AS Customer_Name,
  3      COUNT(DISTINCT o.Order_ID) AS Total_Orders,
  4      SUM(od.Subtotal) AS Total_Purchase,
  5      SUM(od.Quantity) AS Total_Products
  6  FROM Customer c
  7  INNER JOIN Orders o
  8      ON c.Customer_ID = o.Customer_ID
  9  INNER JOIN Order_Details od
 10      ON o.Order_ID = od.Order_ID
 11  GROUP BY c.First_Name || ' ' || c.Last_Name
 12  ORDER BY Total_Purchase DESC;


CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_ORDERS TOTAL_PURCHASE TOTAL_PRODUCTS
------------ -------------- --------------
Harini N
           1           3500              4

Anitha R
           1           3200              2

Priya S
           1           1800              2


SQL> SELECT
  2      c.First_Name || ' ' || c.Last_Name AS Customer_Name,
  3      o.Order_ID,
  4      o.Order_Date,
  5      o.Total_Amount,
  6      py.Payment_Mode,
  7      py.Payment_Amount,
  8      py.Payment_Status
  9  FROM Customer c
 10  INNER JOIN Orders o
 11      ON c.Customer_ID = o.Customer_ID
 12  INNER JOIN Payment py
 13      ON o.Order_ID = py.Order_ID
 14  ORDER BY o.Order_Date DESC;

CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT TOTAL_AMOUNT PAYMENT_MODE         PAYMENT_AMOUNT
---------- --------- ------------ -------------------- --------------
PAYMENT_STATUS
--------------------
Harini N
       201 23-OCT-26         2500 UPI                            2200
Success

Anitha R
       203 23-OCT-26         3200 Net Banking                     850
Success

CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT TOTAL_AMOUNT PAYMENT_MODE         PAYMENT_AMOUNT
---------- --------- ------------ -------------------- --------------
PAYMENT_STATUS
--------------------

Priya S
       202 23-OCT-26         1500 Card                           1200
Success

