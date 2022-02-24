USE [OrderDB]
GO
EXEC	InsertIntoEmployee
        @OfficeID=2,
        @FirstName=N'Barry',
        @LastName='Brown',
        @Email='barryb@bbd.co.za'
GO
