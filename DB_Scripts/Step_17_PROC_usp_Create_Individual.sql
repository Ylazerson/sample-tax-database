USE [TaxApp]
GO




IF EXISTS ( SELECT * 
            FROM   sysobjects 
            WHERE  id = object_id(N'[dbo].[usp_Create_Individual]') 
                   and OBJECTPROPERTY(id, N'IsProcedure') = 1 )
BEGIN
    DROP PROCEDURE [dbo].[usp_Create_Individual]
END

GO

-- ---------------------------------------------------------------------------------------------------------------
/*


EXECUTE [dbo].[usp_Create_Individual]
    -- ----------------------------------------  
    -- Individuals info:
    @p_Document_Number             = 'DX15245-456',
    @p_First_Name                  = 'Jason',
    @p_Middle_Name                 = 'Dale',
    @p_Last_Name                   = 'Smith',
    @p_DOB                         = '1982-04-20',
    @p_Active_Taxpayer             = 1,
    @p_Agency_Employer_Party_ID_FK = null,
    -- ----------------------------------------        
    -- Parties info:
    @p_Address_Line_1              = '673 County Rd',
    @p_Address_Line_2              = 'Suite 3',
    @p_Address_Line_3              = null,
    @p_City                        = 'Boston',
    @p_State_Province              = 'MA',
    @p_Zip_Postal_Code             = '18897',
    @p_Country                     = 'US',
    @p_Email                       = 'sample@gmail.com',
    -- ----------------------------------------
    -- Party_Phone info:
    @p_Phone_Type_ID_FK            = 2,
    @p_Phone_Number                = '1-872-883-9092'

-- --------------------------------------------------------
-- Demonstrate error:

EXECUTE [dbo].[usp_Create_Individual]
    -- ----------------------------------------  
    -- Individuals info:
    @p_Document_Number             = 'DX15245-456',
    @p_First_Name                  = 'Jason',
    @p_Middle_Name                 = 'Dale',
    @p_Last_Name                   = 'Smith',
    @p_DOB                         = '1982-04-20',
    @p_Active_Taxpayer             = 1,
    @p_Agency_Employer_Party_ID_FK = 99,
    -- ----------------------------------------        
    -- Parties info:
    @p_Address_Line_1              = '673 County Rd',
    @p_Address_Line_2              = 'Suite 3',
    @p_Address_Line_3              = null,
    @p_City                        = 'Boston',
    @p_State_Province              = 'MA',
    @p_Zip_Postal_Code             = '18897',
    @p_Country                     = 'US',
    @p_Email                       = 'sample@gmail.com',
    -- ----------------------------------------
    -- Party_Phone info:
    @p_Phone_Type_ID_FK            = 2,
    @p_Phone_Number                = '1-872-883-9092'


-- --------------------------------------------------------
-- Demonstrate error:

EXECUTE [dbo].[usp_Create_Individual]
    -- ----------------------------------------  
    -- Individuals info:
    @p_Document_Number             = 'DX15245-456',
    @p_First_Name                  = 'Jason',
    @p_Middle_Name                 = 'Dale',
    @p_Last_Name                   = 'Smith',
    @p_DOB                         = '1982-04-20',
    @p_Active_Taxpayer             = 1,
    @p_Agency_Employer_Party_ID_FK = null,
    -- ----------------------------------------        
    -- Parties info:
    @p_Address_Line_1              = '673 County Rd',
    @p_Address_Line_2              = 'Suite 3',
    @p_Address_Line_3              = null,
    @p_City                        = 'Boston',
    @p_State_Province              = 'MA',
    @p_Zip_Postal_Code             = '18897',
    @p_Country                     = 'US',
    @p_Email                       = 'sample@gmail.com',
    -- ----------------------------------------
    -- Party_Phone info:
    @p_Phone_Type_ID_FK            = 99,
    @p_Phone_Number                = '1-872-883-9092'


*/
-- ---------------------------------------------------------------------------------------------------------------


create procedure [dbo].[usp_Create_Individual]
    -- ----------------------------------------  
    -- Individuals info:
    @p_Document_Number              nvarchar(50),
    @p_First_Name                   nvarchar(100),
    @p_Middle_Name                  nvarchar(100) = null,
    @p_Last_Name                    nvarchar(100),
    @p_DOB                          date,
    @p_Active_Taxpayer              bit,
    @p_Agency_Employer_Party_ID_FK  int           = null,
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
    declare @v_Party_ID_PK_FK int;
    declare @v_Party_ID_PK    int;
    -- -----------------------------------------------------------------


    -- -----------------------------------------------------------------
    SELECT @v_Party_ID_PK_FK = Party_ID_PK_FK
    FROM   [dbo].[Agencies]
    WHERE  Party_ID_PK_FK = @p_Agency_Employer_Party_ID_FK;

    IF @p_Agency_Employer_Party_ID_FK is not null and @v_Party_ID_PK_FK is null   
    BEGIN;
       THROW 50000, 'Error in usp_Create_Individual stored procedure, cannot pass in invalid p_Agency_Employer_Party_ID_FK.', 0;
    END;
    -- -----------------------------------------------------------------



    -- -----------------------------------------------------------------
    BEGIN TRY
    
        BEGIN TRAN;

            EXECUTE [dbo].[usp_Create_Party]
                @p_Party_Type_FK    = 'I',
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


            INSERT INTO [dbo].[Individuals]
                (
                [Party_ID_PK_FK],                
                [Document_Number],
                [First_Name],
                [Middle_Name],
                [Last_Name],
                [DOB],
                [Active_Taxpayer],
                [Agency_Employer_Party_ID_FK]                
                )
            VALUES
                (
                @v_Party_ID_PK,                
                @p_Document_Number,
                @p_First_Name,
                @p_Middle_Name,
                @p_Last_Name,
                @p_DOB,
                @p_Active_Taxpayer,
                @p_Agency_Employer_Party_ID_FK                
                );

        COMMIT TRAN;

    END TRY
    BEGIN CATCH

        IF @@TRANCOUNT > 0 ROLLBACK TRAN;
        THROW;

    END CATCH;
    -- ----------------------------------------------------------------- 

end

GO


