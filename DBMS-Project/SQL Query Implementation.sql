SQL> SELECT * FROM Product;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE
---------- ----------- ----------
SHADE
--------------------------------------------------
SKIN_TYPE                                          EXPIRY_DA      STOCK
-------------------------------------------------- --------- ----------
       102
Moisturizer
       202           2        350

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE
---------- ----------- ----------
SHADE
--------------------------------------------------
SKIN_TYPE                                          EXPIRY_DA      STOCK
-------------------------------------------------- --------- ----------
Cream
Dry                                                15-AUG-27         40

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE
---------- ----------- ----------
SHADE
--------------------------------------------------
SKIN_TYPE                                          EXPIRY_DA      STOCK
-------------------------------------------------- --------- ----------
       103
Shampoo
       203           3        450

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE
---------- ----------- ----------
SHADE
--------------------------------------------------
SKIN_TYPE                                          EXPIRY_DA      STOCK
-------------------------------------------------- --------- ----------
Clear
All                                                20-JAN-28         30

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE
---------- ----------- ----------
SHADE
--------------------------------------------------
SKIN_TYPE                                          EXPIRY_DA      STOCK
-------------------------------------------------- --------- ----------
       104
Lipstick
       204           4        299

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE
---------- ----------- ----------
SHADE
--------------------------------------------------
SKIN_TYPE                                          EXPIRY_DA      STOCK
-------------------------------------------------- --------- ----------
Pink
All                                                12-NOV-27         25

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE
---------- ----------- ----------
SHADE
--------------------------------------------------
SKIN_TYPE                                          EXPIRY_DA      STOCK
-------------------------------------------------- --------- ----------
       105
Body Lotion
       205           5        399

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE
---------- ----------- ----------
SHADE
--------------------------------------------------
SKIN_TYPE                                          EXPIRY_DA      STOCK
-------------------------------------------------- --------- ----------
White
Dry                                                18-FEB-28         35

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE
---------- ----------- ----------
SHADE
--------------------------------------------------
SKIN_TYPE                                          EXPIRY_DA      STOCK
-------------------------------------------------- --------- ----------
       101
Face Wash
       201           1        250

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE
---------- ----------- ----------
SHADE
-------------------------------------------------- --------- ----------
White
Oily                                               10-MAY-27         50


SQL> SELECT Product_ID, Product_Name, Price
  2  FROM Product;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       102
Moisturizer
       350

       103
Shampoo
       450

       104
Lipstick
       299

       105
Body Lotion
       399

       101
Face Wash
       250


SQL> SELECT * FROM Product
  2  WHERE Price < 1000;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE
---------- ----------- ----------
SHADE
--------------------------------------------------
SKIN_TYPE                                          EXPIRY_DA      STOCK
-------------------------------------------------- --------- ----------
       102
Moisturizer
       202           2        350
Cream
Dry                                                15-AUG-27         40
       103
Shampoo
       203           3        450
Clear
All                                                20-JAN-28         30
       104
Lipstick
       204           4        299
Pink
All                                                12-NOV-27         25
       105
Body Lotion
       205           5        399
White
Dry                                                18-FEB-28         35
       101
Face Wash
       201           1        250
White
Oily                                               10-MAY-27         50


SQL> SELECT * FROM Product
  2  WHERE Price > 100;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE
---------- ----------- ----------
SHADE
--------------------------------------------------
SKIN_TYPE                                          EXPIRY_DA      STOCK
-------------------------------------------------- --------- ----------
       102
Moisturizer
       202           2        350
Cream
Dry                                                15-AUG-27         40
       103
Shampoo
       203           3        450
Clear
All                                                20-JAN-28         30
       104
Lipstick
       204           4        299
Pink
All                                                12-NOV-27         25
       105
Body Lotion
       205           5        399
White
Dry                                                18-FEB-28         35
       101
Face Wash
       201           1        250
White
Oily                                               10-MAY-27         50


SQL> SELECT * FROM Product
  2  ORDER BY Price ASC;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       101
Face Wash
       250

       104
Lipstick
       299

       102
Moisturizer
       350

       105
Body Lotion
       399

       103
Shampoo
       450


SQL> SELECT * FROM Product
  2  ORDER BY Price DESC;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       103
Shampoo
       450

       105
Body Lotion
       399

       102
Moisturizer
       350

       104
Lipstick
       299

       101
Face Wash
       250


SQL> SELECT DISTINCT Category_ID
  2  FROM Product;

CATEGORY_ID
-----------
          2
          3
          4
          5
          1


SQL> SELECT * FROM Product
  2  WHERE Price BETWEEN 100 AND 400;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       102
Moisturizer
       350

       104
Lipstick
       299

       105
Body Lotion
       399

       101
Face Wash
       250


SQL> SELECT * FROM Product
  2  WHERE Category_ID = 1;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE
---------- ----------- ----------
SHADE
--------------------------------------------------
SKIN_TYPE                                          EXPIRY_DA      STOCK
-------------------------------------------------- --------- ----------
       101
Face Wash
       201           1        250
White
Oily                                               10-MAY-27         50


SQL> SELECT *
  2  FROM Customer;

CUSTOMER_ID
-----------
FIRST_NAME
--------------------------------------------------------------------------------
LAST_NAME
--------------------------------------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE            DATE_OF_BIRTH GENDER
--------------- ------------- ----------
ADDRESS
--------------------------------------------------------------------------------
101
Harini
N
harini101@gmail.com
9876543210       15-JUN-05     Female
Chennai

102
Priya
S
priya102@gmail.com

103
Anitha
R

104
Kavin
M

105
Rahul
K

106
Sneha
P

107
Arun
T

108
Divya
L


SQL> SELECT *
  2  FROM Customer
  3  WHERE Customer_ID = 101;

CUSTOMER_ID
-----------
FIRST_NAME
--------------------------------------------------------------------------------
LAST_NAME
--------------------------------------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE            DATE_OF_BIRTH GENDER
--------------- ------------- ----------
ADDRESS
--------------------------------------------------------------------------------
101
Harini
N
harini101@gmail.com
9876543210       15-JUN-05     Female
Chennai


SQL> SELECT Product_ID, Product_Name, Price
  2  FROM Product
  3  WHERE Price < 2000
  4  AND Category_ID = 2;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       102
Moisturizer
       350


SQL> SELECT Product_ID, Product_Name, Price
  2  FROM Product
  3  WHERE Category_ID = 1
  4  OR Category_ID = 3;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       103
Shampoo
       450

       101
Face Wash
       250


SQL> SELECT Product_ID, Product_Name, Price
  2  FROM Product
  3  WHERE Category_ID IN (1, 2, 3);

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       102
Moisturizer
       350

       103
Shampoo
       450

       101
Face Wash
       250


SQL> SELECT Product_ID, Product_Name, Price
  2  FROM Product
  3  WHERE Price BETWEEN 100 AND 300;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       104
Lipstick
       299

       101
Face Wash
       250


SQL> SELECT Product_ID, Product_Name, Price
  2  FROM Product
  3  ORDER BY Price DESC;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       103
Shampoo
       450

       105
Body Lotion
       399

       102
Moisturizer
       350

       104
Lipstick
       299

       101
Face Wash
       250


SQL> SELECT
  2      c.Customer_ID,
  3      c.First_Name,
  4      c.Last_Name,
  5      o.Order_ID,
  6      o.Order_Date,
  7      o.Total_Amount
  8  FROM Customer c
  9  JOIN Orders o
 10      ON c.Customer_ID = o.Customer_ID
 11  ORDER BY o.Order_Date DESC;

CUSTOMER_ID
-----------
FIRST_NAME
--------------------------------------------------------------------------------
LAST_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT TOTAL_AMOUNT
---------- --------- ------------
101
Harini
N
       201 23-OCT-26         2500

103
Anitha
R
       203 23-OCT-26         3200

102
Priya
S
       202 23-OCT-26         1500


SQL> SELECT
  2      od.Order_ID,
  3      od.Product_ID,
  4      od.Quantity,
  5      od.Unit_Price,
  6      od.Subtotal
  7  FROM Order_Details od
  8  ORDER BY od.Subtotal DESC;

  ORDER_ID PRODUCT_ID   QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ---------- ---------- ----------
       203        104          2       1600       3200
       201        101          3       1000       3000
       202        103          2        900       1800
       201        102          1        500        500


SQL> SELECT
  2      c.Customer_ID,
  3      c.First_Name,
  4      COUNT(o.Order_ID) AS Total_Orders
  5  FROM Customer c
  6  JOIN Orders o
  7      ON c.Customer_ID = o.Customer_ID
  8  GROUP BY c.Customer_ID, c.First_Name
  9  ORDER BY Total_Orders DESC;

CUSTOMER_ID
-----------
FIRST_NAME
--------------------------------------------------------------------------------
TOTAL_ORDERS
------------
101
Harini
1

103
Anitha
1

102
Priya
1


SQL> SELECT
  2      c.Customer_ID,
  3      c.First_Name,
  4      SUM(o.Total_Amount) AS Total_Purchase
  5  FROM Customer c
  6  JOIN Orders o
  7      ON c.Customer_ID = o.Customer_ID
  8  GROUP BY c.Customer_ID, c.First_Name
  9  ORDER BY Total_Purchase DESC;

CUSTOMER_ID
-----------
FIRST_NAME
--------------------------------------------------------------------------------
TOTAL_PURCHASE
--------------
103
Anitha
3200

101
Harini
2500

102
Priya
1500
