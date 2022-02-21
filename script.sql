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
	ADD CONSTRAINT PK_EmpID PRIMARY KEY (EmployeeId),
    CONSTRAINT FK_OfficeID FOREIGN KEY (OfficeId) REFERENCES Office(OfficeId)


ALTER TABLE Office
	ADD CONSTRAINT PK_OfficeID PRIMARY KEY (OfficeId),
    CONSTRAINT FK_AddressID FOREIGN KEY (AddressId) REFERENCES Address(AddressId)
