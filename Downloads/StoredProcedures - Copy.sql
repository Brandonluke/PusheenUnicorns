SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE SP_AddUpdateEmployee 
(    -- Add the parameters for the stored procedure here
    @empNumber char(8),
	@firstName varchar(25),
	@lastName varchar(25) ,
	@ssn char(9),
	@address varchar(50),
	@state char(2),
	@zip char(5),
	@jobCode char(4),
	@dateOfBirth date,
	@certification bit,
	@salary money 
    --@p2 int = 0

)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    -- Insert statements for procedure here
    SELECT * 
	FROM Employee

END

GO

CREATE PROCEDURE SP_DeleteEmployee 
    -- Add the parameters for the stored procedure here
    @empNumber char(8)

AS
BEGIN
    DELETE FROM Employee WHERE empNumber = @empNumber 
END

GO