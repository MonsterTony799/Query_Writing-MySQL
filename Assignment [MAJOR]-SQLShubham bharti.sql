-- Answer 1(Full shipment details)
select Order_ID, Ship_id, Ship_Mode, Ship_Date
from shipping_dimen;

-- Answer 2
select Customer_Name, City, State
from cust_dimen;
select Ord_id, Order_Quantity
from market_fact_full;

-- Answer 3
select Order_ID, Ship_id
from shipping_dimen
where Ship_Mode = "Regular Air";

-- Answer 4
UPDATE orders_dimen
SET Order_Priority = "immediate delivery" 
WHERE Ord_id = "Ord_1003" AND Ord_id = "Ord_1005";

-- Answer 5
SELECT *
FROM cust_dimen
WHERE state = "West Bengal";

-- Answer 6
SELECT Ord_id, prod_id, ship_id, Cust_id
FROM market_fact_full
WHERE Discount > 0.05 AND Order_Quantity > 10;

-- ANSWER 7
CREATE TABLE shipping_mode_dimen (Ship_Mode VARCHAR(25), Vehicle_Company VARCHAR(25), Toll_Required BOOLEAN );

-- Answer 8
ALTER TABLE shipping_mode_dimen ADD CONSTRAINT PK_Ship_Mode PRIMARY KEY (Ship_Mode); 

-- Answer 9
INSERT INTO shipping_mode_dimen VALUES ("DELIVERY TRUCK","Ashok Leyland",false);

-- Answer 10
ALTER TABLE shipping_mode_dimen
ADD COLUMN Vehicle_Number VARCHAR(25);

-- ANswer 11
UPDATE shipping_mode_dimen
SET Vehicle_Number = "MH-05-R1234"
WHERE Ship_Mode = "DELIVERY TRUCK" ;

-- Answer 12
SELECT Customer_Name FROM cust_dimen
WHERE City = "Mumbai" AND Customer_Segment = "CORPORATE";

-- Answer 13
SELECT SUM(Sales)
FROM market_fact_full;

-- Answer 14
SELECT City,COUNT(Customer_Name)
FROM cust_dimen
GROUP BY City;

-- Answer 15
SELECT Customer_Name 
FROM cust_dimen
ORDER BY Customer_Name;

-- ANSwer 16
SELECT * FROM prod_dimen;
SELECT Prod_id, COUNT(Product_Category)
FROM prod_dimen
ORDER BY Product_Category DESC;

-- ANswer 17
SELECT MONTHNAME(Order_Date),YEAR(Order_Date)
FROM orders_dimen
WHERE Order_Priority = "CRITICAL"
GROUP BY MONTHNAME(Order_Date)
ORDER BY max(Order_Number);

-- Answer 18



-- Answer 19
SELECT * FROM orders_dimen


-- Answer 20
SELECT MONTHNAME(Order_Date)
FROM orders_dimen
WHERE Order_Priority = "LOW";

-- Answer 21




