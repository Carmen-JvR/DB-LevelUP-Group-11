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
