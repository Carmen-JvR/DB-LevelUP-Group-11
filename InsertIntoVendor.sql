USE [OrderDB]
GO

EXEC	uspInsertIntoVendor 
		@OfficeID = 1,
		@CountryID=1,
        @CityID=1,
        @StreetName=N'Emily Hawkins',
        @StreetNumber=N'4B',
        @MenuID=2,
        @Name=N'Raz''s Place',
        @PhoneNumber=N'+27638264973',
        @WebsiteAddress=N'raz.co.za'
GO
