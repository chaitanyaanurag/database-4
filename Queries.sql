-- Insert Statement (Customer):
INSERT INTO Customer (Name, ContactInfo) VALUES ('Emily Johnson', 'emilyj@example.com');
  
-- Insert Statement (Material):
INSERT INTO Material (MaterialName, SupplierID) VALUES ('Eco-Friendly Paint', 3);
 
-- Update Statement (Update HomeDesign Price):
UPDATE HomeDesign SET BasePrice = BasePrice * 1.05 WHERE DesignName = 'The Terra';
 
-- Update Statement (Update Supplier Location):
UPDATE Supplier SET Location = 'Dallas, TX' WHERE SupplierName = 'Eco Build Materials'; 
 
-- Delete Statement (Remove an Order):
DELETE FROM `Order` WHERE OrderID = 4;
 
-- Simple Select Statement (Subset of Rows and Columns):
SELECT Name, ContactInfo FROM Customer WHERE CustomerID = 5;
 
-- Select Statement with Join (Order and Customer):
SELECT `Order`.OrderID, Customer.Name, `Order`.TotalPrice FROM `Order` JOIN Customer ON `Order`.CustomerID = Customer.CustomerID;
 
-- Select Statement with Join (Material and Supplier):
SELECT Material.MaterialName, Supplier.SupplierName FROM Material JOIN Supplier ON Material.SupplierID = Supplier.SupplierID;
 
-- Summary Function (Average Price of Home Designs):
SELECT AVG(BasePrice) AS AvgPrice FROM HomeDesign;

-- Summary Function (Count of Orders per Customer):
SELECT CustomerID, COUNT(*) AS TotalOrders FROM `Order` GROUP BY CustomerID;
 
-- Summary Function (Total Sales Amount):
SELECT SUM(TotalPrice) AS TotalSales FROM `Order`;
 
-- Multi-table Query:
SELECT Customer.Name, HomeDesign.DesignName, `Order`.OrderDate, `Order`.TotalPrice FROM `Order` JOIN Customer ON `Order`.CustomerID = Customer.CustomerID JOIN HomeDesign ON `Order`.DesignID = HomeDesign.DesignID WHERE `Order`.TotalPrice > 200000;
