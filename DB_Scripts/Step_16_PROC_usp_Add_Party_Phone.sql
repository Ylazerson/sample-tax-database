USE [TaxApp]
GO




IF EXISTS ( SELECT * 
            FROM   sysobjects 
            WHERE  id = object_id(N'[dbo].[usp_Add_Party_Phone]') 
                   and OBJECTPROPERTY(id, N'IsProcedure') = 1 )
BEGIN
    DROP PROCEDURE [dbo].[usp_Add_Party_Phone]
END

GO

-- ---------------------------------------------------------------------------------------------------------------
/*
EXECUTE [dbo].[usp_Add_Party_Phone]
    @p_Party_ID_FK       = 1,
    @p_Phone_Type_ID_FK  = 2,
    @p_Phone_Number      = '1-212-674-8927'

EXECUTE [dbo].[usp_Add_Party_Phone]
    @p_Party_ID_FK       = 1,
    @p_Phone_Type_ID_FK  = 1,
    @p_Phone_Number      = '1-212-432-1112'

-- Demonstrate error:
EXECUTE [dbo].[usp_Add_Party_Phone]
    @p_Party_ID_FK       = 99,
    @p_Phone_Type_ID_FK  = 2,
    @p_Phone_Number      = '1-212-674-8927'

-- Demonstrate error:
EXECUTE [dbo].[usp_Add_Party_Phone]
    @p_Party_ID_FK       = 1,
    @p_Phone_Type_ID_FK  = 99,
    @p_Phone_Number      = '1-212-674-8927'
*/
-- ---------------------------------------------------------------------------------------------------------------


create procedure [dbo].[usp_Add_Party_Phone]
    @p_Party_ID_FK       int,
    @p_Phone_Type_ID_FK  int,
    @p_Phone_Number      nvarchar(30)
as
begin    

    -- -----------------------------------------------------------------
    declare @v_Party_ID_PK      int;
    declare @v_Phone_Type_ID_PK int;
    -- -----------------------------------------------------------------


    -- -----------------------------------------------------------------
    SELECT @v_Party_ID_PK = Party_ID_PK
    FROM   [dbo].[Parties]
    WHERE  Party_ID_PK = @p_Party_ID_FK;

    IF @v_Party_ID_PK is null   
    BEGIN;
       THROW 50000, 'Error in usp_Add_Party_Phone stored procedure, p_Party_ID_FK must be a valid ID.', 0;
    END;
    -- -----------------------------------------------------------------


    -- -----------------------------------------------------------------
    SELECT @v_Phone_Type_ID_PK = Phone_Type_ID_PK
    FROM   [dbo].[Phone_Types]
    WHERE  Phone_Type_ID_PK = @p_Phone_Type_ID_FK;

    IF @v_Phone_Type_ID_PK is null   
    BEGIN;
       THROW 50000, 'Error in usp_Add_Party_Phone stored procedure, p_Phone_Type_ID_FK must be a valid ID.', 0;
    END;
    -- -----------------------------------------------------------------


    -- -----------------------------------------------------------------
    INSERT INTO [dbo].[Party_Phone]
           (
           [Party_ID_FK],
           [Phone_Type_ID_FK],
           [Phone_Number],
           [Modified_Date]
           )             
    VALUES
           (
           @p_Party_ID_FK,
           @p_Phone_Type_ID_FK,
           @p_Phone_Number,
           getdate()
           );    
    -- -----------------------------------------------------------------

end

GO


