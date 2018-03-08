USE [TaxApp]
GO




IF EXISTS ( SELECT * 
            FROM   sysobjects 
            WHERE  id = object_id(N'[dbo].[usp_Create_Agency]') 
                   and OBJECTPROPERTY(id, N'IsProcedure') = 1 )
BEGIN
    DROP PROCEDURE [dbo].[usp_Create_Agency]
END

GO

-- ---------------------------------------------------------------------------------------------------------------
/*


EXECUTE [dbo].[usp_Create_Agency]
    -- ----------------------------------------  
    -- Individuals info:
    @p_Agency_Number               = 'FDDDDA-456',
    @p_Agency_Managers_List        = '3',
    -- ----------------------------------------        
    -- Parties info:
    @p_Address_Line_1              = '76 Loon Rd',
    @p_Address_Line_2              = null,
    @p_Address_Line_3              = null,
    @p_City                        = 'Boston',
    @p_State_Province              = 'MA',
    @p_Zip_Postal_Code             = '44321',
    @p_Country                     = 'US',
    @p_Email                       = 'sample@gmail.com',
    -- ----------------------------------------
    -- Party_Phone info:
    @p_Phone_Type_ID_FK            = 1,
    @p_Phone_Number                = '1-324-543-9092'

-- --------------------------------------------------------
-- Demonstrate error:

EXECUTE [dbo].[usp_Create_Agency]
    -- ----------------------------------------  
    -- Individuals info:
    @p_Agency_Number               = 'FDDDDA-456',
    @p_Agency_Managers_List        = '3,99',
    -- ----------------------------------------        
    -- Parties info:
    @p_Address_Line_1              = '76 Loon Rd',
    @p_Address_Line_2              = null,
    @p_Address_Line_3              = null,
    @p_City                        = 'Boston',
    @p_State_Province              = 'MA',
    @p_Zip_Postal_Code             = '44321',
    @p_Country                     = 'US',
    @p_Email                       = 'sample@gmail.com',
    -- ----------------------------------------
    -- Party_Phone info:
    @p_Phone_Type_ID_FK            = 1,
    @p_Phone_Number                = '1-324-543-9092'

*/
-- ---------------------------------------------------------------------------------------------------------------


create procedure [dbo].[usp_Create_Agency]
    -- ----------------------------------------  
    -- Agencies info:
    @p_Agency_Number                nvarchar(50),
    @p_Agency_Managers_List         nvarchar(100),
    -- ----------------------------------------    
    -- Parties info:
    @p_Address_Line_1               nvarchar(100) = null,
    @p_Address_Line_2               nvarchar(100) = null,
    @p_Address_Line_3               nvarchar(100) = null,
    @p_City                         nvarchar(100) = null,
    @p_State_Province               nvarchar(100) = null,
    @p_Zip_Postal_Code              nvarchar(50)  = null,
    @p_Country                      nvarchar(50)  = null,
    @p_Email                        nvarchar(50)  = null,
    -- ----------------------------------------
    -- Party_Phone info:
    @p_Phone_Type_ID_FK             int           = null,
    @p_Phone_Number                 nvarchar(30)  = null
as
begin    

    -- -----------------------------------------------------------------    
    declare @v_Party_ID_PK    int;
    -- -----------------------------------------------------------------

    -- -----------------------------------------------------------------
    BEGIN TRY
    
        BEGIN TRAN;

            EXECUTE [dbo].[usp_Create_Party]
                @p_Party_Type_FK    = 'A',
                @p_Address_Line_1   = @p_Address_Line_1,
                @p_Address_Line_2   = @p_Address_Line_2,
                @p_Address_Line_3   = @p_Address_Line_3,
                @p_City             = @p_City,
                @p_State_Province   = @p_State_Province,
                @p_Zip_Postal_Code  = @p_Zip_Postal_Code,
                @p_Country          = @p_Country,
                @p_Email            = @p_Email,    
                @p_out_Party_ID_PK  = @v_Party_ID_PK  output


            if @p_Phone_Type_ID_FK is not null
            begin;
                EXECUTE [dbo].[usp_Add_Party_Phone]
                    @p_Party_ID_FK       = @v_Party_ID_PK,
                    @p_Phone_Type_ID_FK  = @p_Phone_Type_ID_FK,
                    @p_Phone_Number      = @p_Phone_Number
            end;


            INSERT INTO [dbo].[Agencies]
                (
                [Party_ID_PK_FK],           
                [Agency_Number]           
                )
            VALUES
                (
                @v_Party_ID_PK,                
                @p_Agency_Number             
                );

            
            INSERT INTO [dbo].[Agency_Managers]
                (
                [Agency_Party_ID_PK_FK],
                [Manager_Party_ID_PK_FK]
                )            
            select @v_Party_ID_PK, Item
            from   [dbo].[ufn_Split](@p_Agency_Managers_List , ',');

        COMMIT TRAN;

    END TRY
    BEGIN CATCH

        IF @@TRANCOUNT > 0 ROLLBACK TRAN;
        THROW;

    END CATCH;
    -- ----------------------------------------------------------------- 

end

GO


