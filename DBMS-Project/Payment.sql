CREATE TABLE Payment (
    Payment_ID NUMBER PRIMARY KEY,
    Order_ID NUMBER,
    Payment_Mode VARCHAR2(20) NOT NULL,
    Payment_Date DATE NOT NULL,
    Payment_Amount NUMBER(10,2) NOT NULL,
    Payment_Status VARCHAR2(20) NOT NULL,
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID)
);

Table created.


INSERT INTO Payment
  (Payment_ID, Order_ID, Payment_Mode, Payment_Date, Payment_Amount, Payment_Status)
   VALUES (501, 1001, 'UPI', SYSDATE, 700.00, 'Successful');

1 row created.


INSERT INTO Payment
   (Payment_ID, Order_ID, Payment_Mode, Payment_Date, Payment_Amount, Payment_Status)
    VALUES (502, 1002, 'Card', SYSDATE, 1200.00, 'Successful');

1 row created.


INSERT INTO Payment
   (Payment_ID, Order_ID, Payment_Mode, Payment_Date, Payment_Amount, Payment_Status)
    VALUES (503, 1003, 'Net Banking', SYSDATE, 850.00, 'Failed');

1 row created.


INSERT INTO Payment
    (Payment_ID, Order_ID, Payment_Mode, Payment_Date, Payment_Amount, Payment_Status)
     VALUES (504, 1004, 'UPI', SYSDATE, 1500.00, 'Successful');

1 row created.


SELECT *
    FROM Payment
    WHERE Payment_Status = 'Successful';

PAYMENT_ID  ORDER_ID PAYMENT_MODE          PAYMENT_D PAYMENT_AMOUNT
----------  -------- --------------------  --------- --------------
PAYMENT_STATUS
--------------------
       501      1001 UPI                    28-SEP-26           700
Successful

       502      1002 Card                   28-SEP-26          1200
Successful

       504      1004 UPI                    28-SEP-26          1500
Successful

SELECT *
    FROM Payment
    WHERE Payment_Status = 'Failed';

PAYMENT_ID  ORDER_ID PAYMENT_MODE          PAYMENT_D PAYMENT_AMOUNT
----------  -------- --------------------  --------- --------------
PAYMENT_STATUS
--------------------
       503      1003 Net Banking            28-SEP-26           850
Failed


UPDATE Payment
    SET Payment_Status = 'Successful'
    WHERE Payment_ID = 503;

1 row updated.


SELECT *
    FROM Payment
    WHERE Payment_ID = 503;

PAYMENT_ID  ORDER_ID PAYMENT_MODE          PAYMENT_D PAYMENT_AMOUNT
----------  -------- --------------------  --------- --------------
PAYMENT_STATUS
--------------------
       503      1003 Net Banking            28-SEP-26           850
Successful


SELECT
   Payment_Mode,
   COUNT(*) AS Total_Transactions
   FROM Payment
   GROUP BY Payment_Mode;

PAYMENT_MODE          TOTAL_TRANSACTIONS
--------------------  ------------------
UPI                                   2
Card                                  1
Net Banking                           1


SELECT
    Payment_Mode,
    SUM(Payment_Amount) AS Total_Amount
    FROM Payment
    GROUP BY Payment_Mode;

PAYMENT_MODE          TOTAL_AMOUNT
--------------------  ------------
UPI                         2200
Card                        1200
Net Banking                  850


SELECT
    p.Payment_ID,
    p.Order_ID,
    c.Customer_ID,
    c.First_Name || ' ' || c.Last_Name AS Customer_Name,
    p.Payment_Mode,
    p.Payment_Date,
    p.Payment_Amount,
    p.Payment_Status
    FROM Payment p
    JOIN Orders o
       ON p.Order_ID = o.Order_ID
    JOIN Customer c
       ON o.Customer_ID = c.Customer_ID
    ORDER BY p.Payment_Date DESC;

PAYMENT_ID  ORDER_ID CUSTOMER_ID
----------  -------- -----------

CUSTOMER_NAME
--------------------------------

PAYMENT_MODE          PAYMENT_D PAYMENT_AMOUNT PAYMENT_STATUS
--------------------  --------- -------------- ---------------
       504      1004         104

Kavin M
UPI                    28-SEP-26           1500 Successful

       503      1003         103

Anitha R
Net Banking            28-SEP-26            850 Successful