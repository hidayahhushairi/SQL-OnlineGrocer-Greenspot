USE gsgrocer;

/* ITEM TABLE */
SELECT * FROM gsgrocer.item;
TRUNCATE TABLE item;
INSERT INTO item VALUES(1000, 'Bennet Farm free-range eggs', 29, 5.49, 'Dairy', 'D12', 'dozen'),
(1000, 'Bennet Farm free-range eggs', 27, 5.49, 'Dairy', 'D12', 'dozen'),
(2000, 'Rubys Kale', 3, 3.99, 'Produced', 'p12', 'bunch'),
(1100, 'Freshness White beans', 13, 1.49, 'Canned', 'a2', '12-oz can'),
(1100, 'Freshness White beans', 53, 3.04, 'Canned', 'a2', '12 ounce can'),
(1000, 'Bennet Farm free-range eggs', 25, 5.99, 'Dairy', 'D12', 'dozen'),
(1100, 'Freshness White beans', 45, 1.49, 'Canned', 'a2', '12-oz can'),
(1222, 'Freshness Green beans', 59, 2.90, 'Canned', 'a3', '12 ounce can'),
(1223, 'Freshness Green beans', 12, 3.49, 'Canned', 'a7', '36 oz can'),
(1224, 'Freshness Wax beans', 31, 1.68, 'Canned', 'a3', '12 ounce can'),
(1000, 'Bennet Farm free-range eggs', 21, 5.49, 'Dairy', 'd12', 'dozen'),
(1100, 'Freshness Green beans', 41, 1.49, 'Canned', 'a2', '12 ounce can'),
(1222, 'Freshness Green beans', 47, 1.29, 'Canned', 'a3', '12-oz can'),
(1224, 'Freshness Wax beans', 23, 1.55, 'Canned', 'a3', '12-oz can'),
(2000, 'Rubys Kale', 28, 3.99, 'Produce', 'p12', 'bunch'),
(2001, 'Rubys Organic Kalee', 20, 6.99, 'Produce', 'p02', 'bunch'),
(1223, 'Freshness Green beans', 7, 3.99, 'Produce', 'p12', '36 oz can'),
(2001, 'Rubys Organic Kalee', 19, 6.99, 'Produce', 'po2', 'bunch'),
(2001, 'Rubys Organic Kalee', 7, 6.99, 'Produce', 'po2', 'bunch'),
(1223, 'Freshness Green beans', 17, 3.49, 'Canned', 'a7', '36 oz can'),
(2000, 'Rubys Kale', 26, 3.99, 'Produced', 'p12', 'bunch');

/* VENDOR TABLE */
SELECT * FROM vendor;
INSERT INTO vendor VALUES('Bennet Farms, Rt. 17 Evansville, IL 55446', 2.35, '2022-01-02'),
('Bennet Farms, Rt. 17 Evansville, IL 55446', 2.35, null),
('Ruby Redd Produce, LLC, 1212 Milam St., Kenosha, AL, 34567', 1.29, null),
('Freshness, Inc., 202 E. Maple St., St. Joseph, MO 45678', 1.38, null),
('Freshness, Inc., 202 E. Maple St., St. Joseph, MO 45678', 0.69, '2022-02-02'),
('Bennet Farms, Rt. 17 Evansville, IL 55446', 2.35, null),
('Freshness, Inc., 202 E. Maple St., St. Joseph, MO 45678', 0.69, null),
('Freshness, Inc., 202 E. Maple St., St. Joseph, MO 45678', 0.59, '2022-10-02'),
('Freshness, Inc., 202 E. Maple St., St. Joseph, MO 45678', 1.75, '2022-10-02'),
('Freshness, Inc., 202 E. Maple St., St. Joseph, MO 45678', 0.65, '2022-10-02'),
('Bennet Farms, Rt. 17 Evansville, IL 55446', 2.35, null),
('Freshness, Inc., 202 E. Maple St., St. Joseph, MO 45678', 1.38, null),
('Freshness, Inc., 202 E. Maple St., St. Joseph, MO 45678', 0.33, null),
('Freshness, Inc., 202 E. Maple St., St. Joseph, MO 45678', 0.81, null),
('Ruby Redd Produce, LLC, 1212 Milam St., Kenosha, AL, 34567', 1.29, '2022-12-02'),
('Ruby Redd Produce, LLC, 1212 Milam St., Kenosha, AL, 34567', 2.19, '2022-12-02'),
('Freshness, Inc., 202 E. Maple St., St. Joseph, MO 45678', 1.75, null),
('Ruby Redd Produce, LLC, 1212 Milam St., Kenosha, AL, 34567', 2.19, null),
('Ruby Redd Produce, LLC, 1212 Milam St., Kenosha, AL, 34567', 2.19, null),
('Freshness, Inc., 202 E. Maple St., St. Joseph, MO 45678', 1.80, '2022-02-15'),
('Ruby Redd Produce, LLC, 1212 Milam St., Kenosha, AL, 34567', 1.29, null);

ALTER TABLE item ADD numID int primary key not null auto_increment;
ALTER TABLE vendor ADD vendorID int primary key not null auto_increment;
ALTER TABLE customer ADD numberID int primary key not null auto_increment;

/* CUSTOMER TABLE */
SELECT * FROM customer;
INSERT INTO customer VALUES(null, 25, null),
(198765, 2, '2022-02-02'),
(null, 2, '2022-02-02'),
(202900, 2, '2022-02-02'),
(null, 40, null),
(196777, 2, '2022-04-02'),
(198765, 8, '2022-07-02'),
(null, 40, null),
(null, 10, null),
(null, 30, null),
(277177, 4, '2022-11-02'),
(null, 4, '2022-11-02'),
(111000, 12, '2022-12-02'),
(null, 8, '2022-12-02'),
(null, 25, null),
(null, 20, null),
(198765, 5, '2022-02-13'),
(100988, 1, '2022-02-13'),
(202900, 12, '2022-02-14'),
(null, 10, null),
(111000, 2, '2022-02-15');

/* BRIDGE TABLE ITEMCUSTOMER */
CREATE TABLE itemCustomer (
    numID int,
    numberID int,
    PRIMARY KEY (numID, numberID),
    FOREIGN KEY (numID) REFERENCES item(numID),
    FOREIGN KEY (numberID) REFERENCES customer(numberID)
);
INSERT INTO itemCustomer VALUES(1,1), (2,2), (3,3), (4,4), (5,5), (6,6), (7,7), (8,8), (9,9), (10,10),
(11,11), (12,12), (13,13), (14,14), (15,15), (16,16), (17,17), (18,18), (19,19), (20,20), (21,21);

/* TABLE RELATIONSHIP */
/* ALTER TABLE Child
ADD CONSTRAINT FK_Child_Parent FOREIGN KEY (ParentId)
    REFERENCES Parent (ParentId); */    
ALTER TABLE item
ADD CONSTRAINT FK_numID FOREIGN KEY (numID)
    REFERENCES vendor (vendorID);

/* ACCESS RELATED TABLE */
/* 1. The highest overall customer purchase and the total spent by month */
SELECT customer.numberID, customer.customerID, SUM(item.itemPrice*customer.customerQty) AS total_price, MONTH(customer.soldDate) AS month
FROM customer
INNER JOIN item ON customer.numberID = item.numID
GROUP BY numberID, soldDate;

/* 2. The frequeny of regular membership customers purchasing item */
SELECT customer.customerID, COUNT(customer.customerID) AS frequency, item.itemName
FROM customer
INNER JOIN item on customer.numberID=item.numID
WHERE customer.customerID IS NOT NULL
GROUP BY customerID, itemName;

/* 3. Vendors and their amounts of items by the type of item */
SELECT SUBSTRING_INDEX(vendor.vendorLocation,',', 1) AS vendor,
vendor.purchaseDate, item.itemtype, item.itemUnit, item.itemID ,count(*) AS item_amt
FROM vendor
INNER JOIN item on vendor.vendorID=item.numID
GROUP BY vendorLocation, numID;

/* 4. Item name, unit, id, and the number of item restock */
SELECT itemName, itemUnit, itemLocation, itemID, COUNT(*) AS num_restock
FROM item
GROUP BY itemName, itemUnit, itemLocation, itemID;

/* 5. Connect all three tables to identify the overview of business */
SELECT vendor.vendorLocation, vendor.vendorCost, vendor.purchaseDate, item.itemID, item.itemQtyreceive, item.itemPrice,
item.itemUnit, customer.customerID, customer.customerQty, customer.soldDate
FROM vendor
INNER JOIN item ON vendor.vendorID = item.numID
INNER JOIN customer ON item.numID = customer.numberID;

