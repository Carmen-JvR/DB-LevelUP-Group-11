USE master;
DROP DATABASE OrderDB;
GO
CREATE DATABASE OrderDB;
GO
USE OrderDB;
GO

--------------------------------------------------------------
--  Table Creation
--------------------------------------------------------------

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
);
GO

CREATE TABLE EmployeeDiet(
	DietID INT NOT NULL,
	EmployeeID INT NOT NULL
);
GO

CREATE TABLE DishDietaryRequirement(
    DietID INT NOT NULL,
    DishID  INT NOT NULL
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

ALTER TABLE Dish 
    ADD CONSTRAINT FK_Dish_Menu_MenuID FOREIGN KEY (MenuID) REFERENCES Menu(MenuID)
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

ALTER TABLE [Address]
    ADD CONSTRAINT FK_Address_Country_CountryID FOREIGN KEY (CountryID) REFERENCES Country(CountryID),
		CONSTRAINT FK_Address_City_CityID FOREIGN KEY (CityID) REFERENCES City(CityID) 
GO

ALTER TABLE EmployeeDiet
    ADD CONSTRAINT FK_EmployeeDiet_DietaryRequirement_DietID FOREIGN KEY(DietID) REFERENCES DietaryRequirement(DietID),
	    CONSTRAINT FK_EmployeeDiet_Employee_EmployeeID FOREIGN KEY(EmployeeID) REFERENCES Employee(EmployeeID)
GO

ALTER TABLE DietaryRequirement
    ADD CONSTRAINT FK_DietaryRequirement_DietType_DietTypeID FOREIGN KEY(DietTypeID) REFERENCES DietType(DietTypeID)
GO

ALTER TABLE DishDietaryRequirement
    ADD CONSTRAINT FK_DishDietaryRequirement_Dish_DishID FOREIGN KEY(DishID) REFERENCES Dish(DishID),
        CONSTRAINT FK_DishDietaryRequirement_DietType_DietID FOREIGN KEY(DietID) REFERENCES DietaryRequirement(DietID)
GO

--------------------------------------------------------------
--  Function Creation
--------------------------------------------------------------

CREATE FUNCTION NumPeopleWithSpecificRequirement (@DietID INT, @OfficeID INT)
RETURNS INT
AS
BEGIN
 	DECLARE @NumPeople INT

    SELECT @NumPeople = COUNT(Employee.EmployeeID) FROM Employee
        INNER JOIN EmployeeDiet ON Employee.EmployeeID = EmployeeDiet.EmployeeID
        INNER JOIN DietaryRequirement ON EmployeeDiet.DietID = DietaryRequirement.DietID
        WHERE DietaryRequirement.DietID = @DietID
        AND Employee.OfficeID = @OfficeID 
    
    RETURN @NumPeople
END
GO

--------------------------------------------------------------
--  View Creation
--------------------------------------------------------------

CREATE VIEW [VendorMenuView] AS
SELECT v.VendorID, m.Title AS MenuTitle, d.[Name] AS DishName, d.[Description] AS DishDescription, dr.[Name] AS DietaryRequirementName
FROM Vendor v 
	INNER JOIN Menu m ON m.MenuID = v.menuID
    INNER JOIN Dish d ON d.MenuID = m.MenuID
    INNER JOIN DishDietaryRequirement ddr ON ddr.DishID = d.DishID
    INNER JOIN DietaryRequirement dr ON dr.DietID = ddr.DietID
GO

CREATE VIEW [FullAddressView] AS
SELECT a.AddressID, a.StreetName, a.StreetNumber, co.Name AS Country, ci.Name AS City
FROM Address a 
    INNER JOIN Country co ON co.CountryID = a.CountryID
    INNER JOIN City ci ON ci.CityID = a.CityID
GO

CREATE VIEW [EmployeeDietView] AS
SELECT e.EmployeeID, e.OfficeID, (e.FirstName + ' ' + e.LastName) AS DisplayName, dr.[Name] AS DietaryRequirementName, dt.[Name] AS DietaryRequirementType
FROM Employee e
    INNER JOIN EmployeeDiet ed ON ed.EmployeeID = e.EmployeeID
    INNER JOIN DietaryRequirement dr ON dr.DietID = ed.DietID
    INNER JOIN DietType dt ON dt.DietTypeID = dr.DietTypeID
GO

--------------------------------------------------------------
--  Procedure Creation
--------------------------------------------------------------

CREATE PROCEDURE InsertIntoDishDietaryRequirement
	@DishID INT,
	@DietaryRequirementName VARCHAR(60)
As
BEGIN
	MERGE INTO DishDietaryRequirement A
	USING ( VALUES ((SELECT DietaryRequirement.DietID from DietaryRequirement where LOWER(DietaryRequirement.Name) = LOWER(@DietaryRequirementName)), @DishID))
	AS M(DietID, DishID)
ON A.DietID = M.DietID AND  A.DishID = M.DishID
	WHEN NOT MATCHED THEN
		INSERT (DietID, DishID)
		VALUES ((SELECT DietaryRequirement.DietID from DietaryRequirement where LOWER(DietaryRequirement.Name) = LOWER(@DietaryRequirementName)), @DishID);
END
GO


CREATE PROCEDURE InsertNewAddress(@CountryID INT, @CityID INT, @StreetName VARCHAR(60), @StreetNumber VARCHAR(10) )
AS 
DECLARE @newAddressId AS INT
INSERT INTO [Address] (CountryID, CityID, StreetName, StreetNumber) VALUES (@CountryID, @CityID,@StreetName, @StreetNumber );
SELECT @newAddressId =   (SELECT SCOPE_IDENTITY())
RETURN @newAddressId
GO

CREATE PROCEDURE uspInsertEmployee 
    @OfficeID   INT,
    @FirstName  VARCHAR(60) = NULL,
    @LastName   VARCHAR(60) = NULL,
    @Email      VARCHAR(60)
AS
BEGIN
	SET NOCOUNT ON;

    INSERT INTO Employee(
        OfficeID,
        FirstName,
        LastName,
        Email
    )
    Values
    (@OfficeID
    ,@FirstName
    ,@LastName
    ,@Email)

END
GO