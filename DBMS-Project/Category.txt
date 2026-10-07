CREATE TABLE Category (
      Category_ID NUMBER PRIMARY KEY,
      Category_Name VARCHAR2(100) UNIQUE,
      Description VARCHAR2(255)
);

Table created.


INSERT INTO Category VALUES
   (1, 'Face Care', 'Products for face care');

1 row created.


INSERT INTO Category VALUES
   (2, 'Skin Care', 'Products for skin care');

1 row created.


INSERT INTO Category VALUES
   (3, 'Hair Care', 'Products for hair care');

1 row created.


INSERT INTO Category VALUES
   (4, 'Makeup', 'Makeup products');

1 row created.


INSERT INTO Category VALUES
   (5, 'Body Care', 'Products for body care');

1 row created.


COMMIT;

Commit complete.


SELECT * FROM Category;

CATEGORY_ID
-----------
CATEGORY_NAME
--------------------------------------------------------------------------------
DESCRIPTION
--------------------------------------------------------------------------------
          1
Face Care
Products for face care

          2
Skin Care
Products for skin care

          3
Hair Care
Products for hair care

          4
Makeup
Makeup products

          5
Body Care
Products for body care