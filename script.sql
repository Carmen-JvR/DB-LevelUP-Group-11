USE master;
DROP DATABASE OrderDB;
GO
CREATE DATABASE OrderDB;
GO
USE OrderDB;
GO


CREATE TABLE Office (
    OfficeID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    AddressID INT,
    PhoneNumber VARCHAR(15)
);
GO

CREATE TABLE Employee (
    EmployeeID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    OfficeID INT NOT NULL,
    FirstName VARCHAR(60) NULL,
    LastName VARCHAR(60) NULL,
    Email VARCHAR(60) NOT NULL UNIQUE
);
GO
 
CREATE TABLE Country(
	CountryID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[Name] VARCHAR(60) NOT NULL UNIQUE
);
GO

CREATE TABLE City(
	CityID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[Name] VARCHAR(60) NOT NULL UNIQUE
);
GO

CREATE TABLE [Address](
	AddressID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	CountryID INT NOT NULL,
	CityID INT NOT NULL,
	StreetName VARCHAR(60) NULL,
	StreetNumber VARCHAR(10) NULL
);
GO

ALTER TABLE [Address]
    ADD CONSTRAINT FK_Address_Country_CountryID FOREIGN KEY (CountryID) REFERENCES Country(CountryID),
		CONSTRAINT FK_Address_City_CityID FOREIGN KEY (CityID) REFERENCES City(CityID) 
GO

CREATE TABLE Vendor(
	VendorID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	OfficeID INT NOT NULL,
	AddressID INT NOT NULL,
	MenuID INT NOT NULL,
	[Name] VARCHAR(60) NOT NULL ,
	PhoneNumber VARCHAR(15) NULL UNIQUE,
	WebsiteAddress VARCHAR(120) NULL
);
GO

ALTER TABLE Vendor
    ADD CONSTRAINT FK_Vendor_Address_AddressID FOREIGN KEY (AddressID) REFERENCES [Address](AddressID),
		CONSTRAINT FK_Vendor_Office_OfficeID FOREIGN KEY (OfficeID) REFERENCES Office(OfficeID),
		CONSTRAINT FK_Vendor_Menu_MenuID FOREIGN KEY (MenuID) REFERENCES Menu(MenuID)
GO 

ALTER TABLE Employee 
	ADD CONSTRAINT FK_Employee_Office_OfficeID FOREIGN KEY (OfficeID) REFERENCES Office(OfficeID)
GO

ALTER TABLE Office
    ADD CONSTRAINT FK_Office_Address_AddressID FOREIGN KEY (AddressID) REFERENCES Address(AddressID)
GO

CREATE TABLE DietType(
	DietTypeID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[Name] VARCHAR(60) NOT NULL UNIQUE
);
GO


CREATE TABLE DietaryRequirement(
    DietID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    DietTypeID INT NOT NULL,
	[Name] VARCHAR(60) NOT NULL UNIQUE,
    [Description] TEXT NULL,
    CONSTRAINT FK_DietaryRequirement_DietType_DietTypeID FOREIGN KEY(DietTypeID) REFERENCES DietType(DietTypeID)
);
GO

CREATE TABLE EmployeeDiet(
	DietID INT NOT NULL,
	EmployeeID INT NOT NULL,
	CONSTRAINT FK_EmployeeDiet_DietaryRequirement_DietID FOREIGN KEY(DietID) REFERENCES DietaryRequirement(DietID),
	CONSTRAINT FK_EmployeeDiet_Employee_EmployeeID FOREIGN KEY(EmployeeID) REFERENCES Employee(EmployeeID)
);
GO

CREATE TABLE DishDietaryRequirement(
    DietaryRequirementID INT NOT NULL,
    DishID  INT NOT NULL,
    CONSTRAINT FK_DishDietaryRequirement_DietType_DishID FOREIGN KEY(DishID) REFERENCES DietType(DishID),
    CONSTRAINT FK_DishDietaryRequirement_DietType_DietaryRequirementsID FOREIGN KEY(DietaryRequirementID) REFERENCES DietType(DietaryRequirementID)
);
GO

CREATE TABLE Menu (
  MenuID INT  IDENTITY(1,1) NOT NULL PRIMARY KEY,
  Title VARCHAR(60) NOT NULL,
  Summary TEXT NULL,
  UpdatedAt DATE NOT NULL 
)
GO

CREATE TABLE Dish (
  DishID INT  IDENTITY(1,1) NOT NULL PRIMARY KEY,
  MenuID INT NOT NULL,
  [Name] VARCHAR(60) NOT NULL,
  [Description] TEXT NULL
)
GO

ALTER TABLE [Dish] ADD CONSTRAINT FK_Dish_Menu_MenuID
FOREIGN KEY (MenuID) REFERENCES Menu(MenuID)
