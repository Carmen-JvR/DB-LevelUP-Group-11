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
);


CREATE TABLE Employee (
    EmployeeID INT NOT NULL,
    OfficeID INT NOT NULL,
    FirstName varchar(255),
    LastName varchar(255),
    Email varchar(255),
);

ALTER TABLE Employee 
	ADD CONSTRAINT PK_EmpID PRIMARY KEY (EmployeeID),
    CONSTRAINT FK_OfficeID FOREIGN KEY (OfficeID) REFERENCES Office(OfficeID)


ALTER TABLE Office
	ADD CONSTRAINT PK_OfficeID PRIMARY KEY (OfficeID),
    CONSTRAINT FK_AddressID FOREIGN KEY (AddressID) REFERENCES Address(AddressID)
