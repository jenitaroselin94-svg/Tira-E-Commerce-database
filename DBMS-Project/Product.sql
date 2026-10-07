CREATE TABLE Product (
    Product_ID NUMBER PRIMARY KEY,
    Product_Name VARCHAR2(100) NOT NULL,
    Brand_ID NUMBER,
    Category_ID NUMBER,
    Price NUMBER(10,2) NOT NULL,
    Shade VARCHAR2(50),
    Skin_Type VARCHAR2(50),
    Expiry_Date DATE,
    Stock NUMBER,
    CONSTRAINT fk_product_category
    FOREIGN KEY (Category_ID)
    REFERENCES Category(Category_ID)
);

Table created.


INSERT INTO Product
    VALUES (101, 'Face Wash', 201, 1, 250.00,
   'White', 'Oily', DATE '2027-05-10', 50);

1 row created.


INSERT INTO Product
    VALUES (102, 'Moisturizer', 202, 2, 350.00,
   'Cream', 'Dry', DATE '2027-08-15', 40);

1 row created.


INSERT INTO Product
   VALUES (103, 'Shampoo', 203, 3, 450.00,
  'Clear', 'All', DATE '2028-01-20', 30);

1 row created.


INSERT INTO Product
     VALUES (104, 'Lipstick', 204, 4, 299.00,
    'Pink', 'All', DATE '2027-11-12', 25);

1 row created.


INSERT INTO Product
    VALUES (105, 'Body Lotion', 205, 5, 399.00,
    'White', 'Dry', DATE '2028-02-18', 35);

1 row created.


COMMIT;

Commit complete.


SELECT * FROM Product;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE
---------- ----------- ----------
SHADE
--------------------------------------------------
SKIN_TYPE
-------------------------------------------------- EXPIRY_DA      STOCK
--------- ----------
       101
Face Wash
       201           1        250
White
Oily                                               10-MAY-27         50


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