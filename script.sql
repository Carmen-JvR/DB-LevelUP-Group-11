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

ALTER TABLE Employee 
	ADD CONSTRAINT FK_OfficeID FOREIGN KEY (OfficeID) REFERENCES Office(OfficeID)


ALTER TABLE Office
    ADD CONSTRAINT FK_AddressID FOREIGN KEY (AddressID) REFERENCES Address(AddressID)


CREATE TABLE DietType(
	DietTypeID int IDENTITY(1,1) NOT NULL,
	Name varchar(120) NULL,
	CONSTRAINT PK_DietTypeID PRIMARY KEY(DietTypeID)
);
GO


CREATE TABLE DietaryRequirements(
    DietID int IDENTITY(1,1) NOT NULL,
    DietTypeID int NOT NULL,
	Name varchar(120) NULL,
    Description varchar(1000) NULL,
    CONSTRAINT PK_DietID PRIMARY KEY(DietID),
    CONSTRAINT FK_DietTypeID FOREIGN KEY(DietTypeID) REFERENCES DietType(DietTypeID)
);
GO

CREATE TABLE EmployeeDiet(
	DietID int NOT NULL,
	EmployeeID int NOT NULL,
	CONSTRAINT FK_DietID FOREIGN KEY(DietID) REFERENCES DietaryRequirements(DietID),
	CONSTRAINT FK_EmployeeID FOREIGN KEY(EmployeeID) REFERENCES Employee(EmployeeID)
);
GO