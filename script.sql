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
  Summary varchar(120) NULL,
  CreatedAt datetime NULL,
  UpdatedAt datetime NULL
)
GO

CREATE TABLE Dish (
  DishID int PRIMARY KEY NOT NULL,
  MenuID int NOT NULL,
  [Name] varchar(64)
  Cuisine varchar(64)
)
GO

ALTER TABLE [Dish] ADD CONSTRAINT FK_MenuID
FOREIGN KEY (MenuID) REFERENCES Menu(MenuID)


