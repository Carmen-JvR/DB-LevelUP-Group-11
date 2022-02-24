USE [OrderDB]
GO
EXEC	uspInsertEmployee
        @OfficeID=2,
        @FirstName=N'Barry',
        @LastName='Brown',
        @Email='barryb@bbd.co.za'
GO
