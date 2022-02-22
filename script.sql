USE master;
DROP DATABASE OrderDB;
GO
CREATE DATABASE OrderDB;
GO
USE OrderDB;
GO

CREATE TABLE Menu (
  MenuID int PRIMARY KEY NOT NULL,
  Title varchar(64) NULL,
  Summary text NULL,
  CreatedAt date NULL
)
GO

CREATE TABLE Dish (
  DishID int PRIMARY KEY NOT NULL,
  MenuID int NOT NULL,
  [Name] varchar(60) NOT NULL UNIQUE
  [Description] text NULL
)
GO

ALTER TABLE [Dish] ADD CONSTRAINT FK_MenuID
FOREIGN KEY (MenuID) REFERENCES Menu(MenuID)


