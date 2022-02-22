USE master;
DROP DATABASE OrderDB;
GO
CREATE DATABASE OrderDB;
GO
USE OrderDB;
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


