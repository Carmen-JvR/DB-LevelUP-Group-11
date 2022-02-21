USE master;
DROP DATABASE OrderDB;
GO
CREATE DATABASE OrderDB;
GO
USE OrderDB;
GO


CREATE TABLE Office (
    OfficeId INT IDENTITY(1,1) NOT NULL,
    AddressId INT,
    PhoneNumber varchar(15),
);


CREATE TABLE Employee (
    EmployeeId INT NOT NULL,
    OfficeId INT NOT NULL,
    FirstName varchar(255),
    LastName varchar(255),
    Email varchar(255),
);

ALTER TABLE Employee 
	ADD CONSTRAINT PK_EmpId PRIMARY KEY (EmployeeId),
    CONSTRAINT FK_OfficeId FOREIGN KEY (OfficeId) REFERENCES Office(OfficeId)


ALTER TABLE Office
	ADD CONSTRAINT PK_OfficeId PRIMARY KEY (OfficeId),
    CONSTRAINT FK_AddressId FOREIGN KEY (AddressId) REFERENCES Address(AddressId)
