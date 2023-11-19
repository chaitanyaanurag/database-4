-- Loading data into the Customer table:
LOAD DATA LOCAL INFILE 'D:\\Chaitanya\\Database\\Customer.csv' INTO TABLE Customer FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (CustomerID, Name, ContactInfo);
 
-- Loading data into the HomeDesign table:
LOAD DATA LOCAL INFILE 'D:\\Chaitanya\\Database\\HomeDesign.csv' INTO TABLE HomeDesign FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (DesignID, DesignName, BasePrice);
 
-- Loading data into the Order table:
LOAD DATA LOCAL INFILE 'D:\\Chaitanya\\Database\\Order.csv' INTO TABLE `Order` FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (OrderID, CustomerID, DesignID, OrderDate, TotalPrice);
 
-- Loading data into the Supplier table:
LOAD DATA LOCAL INFILE 'D:\\Chaitanya\\Database\\Supplier.csv' INTO TABLE Supplier FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (SupplierID, SupplierName, Location);
 
-- Loading data into the Material table:
LOAD DATA LOCAL INFILE 'D:\\Chaitanya\\Database\\Material.csv' INTO TABLE Material FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (MaterialID, MaterialName, SupplierID);
