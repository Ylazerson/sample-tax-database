USE [TaxApp]
GO






IF EXISTS ( SELECT * 
            FROM   sysobjects 
            WHERE  id = object_id(N'[dbo].[usp_Create_Tax_Payment]') 
                   and OBJECTPROPERTY(id, N'IsProcedure') = 1 )
BEGIN
    DROP PROCEDURE [dbo].[usp_Create_Tax_Payment]
END

GO
-- ---------------------------------------------------------------------------------------------------------------
/*


EXECUTE [dbo].[usp_Create_Tax_Payment]
    @p_Tax_Type_ID_FK       = 1,
    @p_Agency_Party_ID_FK   = 14,
    @p_Taxpayer_Party_ID_FK = 18,
    @p_Payment_Date         = '2015-01-19 7:20:00 -08:00',
    @p_Currency_Code        = 'USD',
    @p_Payment_Amount       = 1700.65

-- --------------------------------------------------------
-- Demonstrate error:

EXECUTE [dbo].[usp_Create_Tax_Payment]
    @p_Tax_Type_ID_FK       = 1,
    @p_Agency_Party_ID_FK   = 14,
    @p_Taxpayer_Party_ID_FK = 14,  -- invalid taxpayer
    @p_Payment_Date         = '2015-01-19 7:20:00 -08:00',
    @p_Currency_Code        = 'USD',
    @p_Payment_Amount       = 1700.65


*/
-- ---------------------------------------------------------------------------------------------------------------


create procedure [dbo].[usp_Create_Tax_Payment]  
    @p_Tax_Type_ID_FK        int,
    @p_Agency_Party_ID_FK    int,
    @p_Taxpayer_Party_ID_FK  int,
    @p_Payment_Date          datetimeoffset(0),
    @p_Currency_Code         nchar(3),
    @p_Payment_Amount        decimal(15,2)           
as
begin    

    -- -----------------------------------------------------------------
    declare @v_Tax_Type_ID_FK        int;
    declare @v_Agency_Party_ID_FK    int;
    declare @v_Taxpayer_Party_ID_FK  int;
    -- -----------------------------------------------------------------


    -- -----------------------------------------------------------------
    SELECT @v_Tax_Type_ID_FK = Tax_Type_ID_PK
    FROM   [dbo].[Tax_Types]
    WHERE  Tax_Type_ID_PK = @p_Tax_Type_ID_FK;

    IF @v_Tax_Type_ID_FK is null   
    BEGIN;
       THROW 50000, 'Error in usp_Create_Tax_Payment stored procedure, p_Tax_Type_ID_FK must be a valid ID.', 0;
    END;
    -- -----------------------------------------------------------------


    -- -----------------------------------------------------------------
    SELECT @v_Agency_Party_ID_FK = Party_ID_PK_FK
    FROM   [dbo].[Agencies]
    WHERE  Party_ID_PK_FK = @p_Agency_Party_ID_FK;

    IF @v_Agency_Party_ID_FK is null   
    BEGIN;
       THROW 50000, 'Error in usp_Create_Tax_Payment stored procedure, p_Agency_Party_ID_FK must be a valid ID.', 0;
    END;
    -- -----------------------------------------------------------------


    -- -----------------------------------------------------------------
    SELECT @v_Taxpayer_Party_ID_FK = Party_ID_PK
    FROM   [dbo].[Parties]
    WHERE  Party_ID_PK    = @p_Taxpayer_Party_ID_FK
      AND  Party_Type_FK in ('C', 'I');

    IF @v_Taxpayer_Party_ID_FK is null   
    BEGIN;
       THROW 50000, 'Error in usp_Create_Tax_Payment stored procedure, p_Taxpayer_Party_ID_FK must be a valid ID.', 0;
    END;
    -- -----------------------------------------------------------------

    
    -- -----------------------------------------------------------------
    IF @p_Payment_Amount is null or @p_Payment_Amount = 0
    BEGIN;
       THROW 50000, 'Error in usp_Create_Tax_Payment stored procedure, p_Payment_Amount must be > 0.', 0;
    END;
    -- -----------------------------------------------------------------


    -- -----------------------------------------------------------------
    INSERT INTO [dbo].[Tax_Payments]
        (
        [Tax_Type_ID_FK],
        [Agency_Party_ID_FK],
        [Taxpayer_Party_ID_FK],
        [Payment_Date],
        [Currency_Code],
        [Payment_Amount]           
        )
    VALUES
        (            
        @p_Tax_Type_ID_FK,
        @p_Agency_Party_ID_FK,
        @p_Taxpayer_Party_ID_FK,
        @p_Payment_Date,
        @p_Currency_Code,
        @p_Payment_Amount
        );
    -- -----------------------------------------------------------------

end

GO


