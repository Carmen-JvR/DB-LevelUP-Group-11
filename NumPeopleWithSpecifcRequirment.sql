USE [OrderDB]
GO
DECLARE @res AS  INT;
EXEC @res= NumPeopleWithSpecificRequirement
    @DietID=9,
    @OfficeID=1
PRINT(@res)
GO
