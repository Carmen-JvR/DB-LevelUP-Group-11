USE master;
DROP DATABASE OrderDB;
GO
CREATE DATABASE OrderDB;
GO
USE OrderDB;
GO


CREATE TABLE Office (
    OfficeID INT IDENTITY(1,1) NOT NULL,
    AddressID INT,
    PhoneNumber varchar(15),
    CONSTRAINT PK_OfficeID PRIMARY KEY (OfficeID)
);


CREATE TABLE Employee (
    EmployeeID INT NOT NULL,
    OfficeID INT NOT NULL,
    FirstName varchar(255),
    LastName varchar(255),
    Email varchar(255),
    CONSTRAINT PK_EmployeeID PRIMARY KEY (EmployeeID)
);
 
CREATE TABLE [dbo].[Address](
	[AddressID] int IDENTITY(1,1) NOT NULL,
	[Country] varchar(50) NULL,
	[StreetName] varchar(50) NULL,
	[StreetNumber] varchar(10) NULL,
	[PostalCode] varchar(10) NULL,
	CONSTRAINT PK_AddressID PRIMARY KEY (AddressID)
);

CREATE TABLE [dbo].[Vendor](
	[VendorID] int IDENTITY(1,1) NOT NULL,
	[OfficeID] int NOT NULL,
	[AddressID] int NOT NULL,
	[MenuID] int NOT NULL,
	[Name] varchar(50) NULL,
	[PhoneNumber] varchar(15) NULL,
	[WebsiteAddress] varchar(120) NULL,
	CONSTRAINT PK_VendorID PRIMARY KEY (VendorID)
);

ALTER TABLE dbo.Vendor
    ADD CONSTRAINT FK_Vendor_Address_AddressID FOREIGN KEY (AddressID) REFERENCES [Address](AddressID),
		CONSTRAINT FK_Vendor_Office_OfficeID FOREIGN KEY (OfficeID) REFERENCES [Office](OfficeID)
		--CONSTRAINT FK_Vendor_Menu_MenuID FOREIGN KEY (MenuID) REFERENCES [Menu](MenuID)

ALTER TABLE Employee 
	ADD CONSTRAINT FK_Employee_Office_OfficeID FOREIGN KEY (OfficeID) REFERENCES Office(OfficeID)


ALTER TABLE Office
    ADD CONSTRAINT FK_Office_Address_AddressID FOREIGN KEY (AddressID) REFERENCES Address(AddressID)
