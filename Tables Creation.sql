-- Customer Table
CREATE TABLE Customer ( CustomerID INT AUTO_INCREMENT PRIMARY KEY, Name VARCHAR(100) NOT NULL, ContactInfo VARCHAR(255) NOT NULL );
-- HomeDesign Table
CREATE TABLE HomeDesign ( DesignID INT AUTO_INCREMENT PRIMARY KEY, DesignName VARCHAR(100) NOT NULL, BasePrice DECIMAL(10, 2) NOT NULL );
-- Order Table
CREATE TABLE `Order` ( OrderID INT AUTO_INCREMENT PRIMARY KEY, CustomerID INT NOT NULL, DesignID INT NOT NULL, OrderDate DATE NOT NULL, TotalPrice DECIMAL(10, 2) NOT NULL, FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID), FOREIGN KEY (DesignID) REFERENCES HomeDesign(DesignID) );
-- Supplier Table
CREATE TABLE Supplier ( SupplierID INT AUTO_INCREMENT PRIMARY KEY, SupplierName VARCHAR(100) NOT NULL, Location VARCHAR(255) NOT NULL );
-- Material Table
CREATE TABLE Material ( MaterialID INT AUTO_INCREMENT PRIMARY KEY, MaterialName VARCHAR(100) NOT NULL, SupplierID INT NOT NULL, FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID) );