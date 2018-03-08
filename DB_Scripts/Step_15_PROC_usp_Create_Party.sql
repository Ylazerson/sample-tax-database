USE [TaxApp]
GO





IF EXISTS ( SELECT * 
            FROM   sysobjects 
            WHERE  id = object_id(N'[dbo].[usp_Create_Party]') 
                   and OBJECTPROPERTY(id, N'IsProcedure') = 1 )
BEGIN
    DROP PROCEDURE [dbo].[usp_Create_Party]
END

GO

-- ---------------------------------------------------------------------------------------------------------------
/*
DECLARE @new_id int

EXECUTE [dbo].[usp_Create_Party]
    @p_Party_Type_FK    = 'A',
    @p_Address_Line_1   = '673 County Rd',
    @p_Address_Line_2   = 'Suite 3',
    @p_Address_Line_3   = null,
    @p_City             = 'Boston',
    @p_State_Province   = 'MA',
    @p_Zip_Postal_Code  = '18897',
    @p_Country          = 'US',
    @p_Email            = 'sample@gmail.com',
    -- ----------------------------------------
    @p_out_Party_ID_PK  = @new_id  output

PRINT   @new_id

-- -----------------------------------------------------------------------------------
-- Demonstrate error:

DECLARE @new_id int

EXECUTE [dbo].[usp_Create_Party]
    @p_Party_Type_FK    = 'G',
    @p_Address_Line_1   = '673 County Rd',
    @p_Address_Line_2   = 'Suite 3',
    @p_Address_Line_3   = null,
    @p_City             = 'Boston',
    @p_State_Province   = 'MA',
    @p_Zip_Postal_Code  = '18897',
    @p_Country          = 'US',
    @p_Email            = 'sample@gmail.com',
    -- ----------------------------------------
    @p_out_Party_ID_PK  = @new_id  output

PRINT   @new_id

*/
-- ---------------------------------------------------------------------------------------------------------------


create procedure [dbo].[usp_Create_Party]
    @p_Party_Type_FK    nchar(1),
    @p_Address_Line_1   nvarchar(100) = null,
    @p_Address_Line_2   nvarchar(100) = null,
    @p_Address_Line_3   nvarchar(100) = null,
    @p_City             nvarchar(100) = null,
    @p_State_Province   nvarchar(100) = null,
    @p_Zip_Postal_Code  nvarchar(50)  = null,
    @p_Country          nvarchar(50)  = null,
    @p_Email            nvarchar(50)  = null,
    -- ----------------------------------------
    @p_out_Party_ID_PK  int output
as
begin    

    IF @p_Party_Type_FK not in ('A', 'C', 'I')     
    BEGIN;
       THROW 50000, 'Error in usp_Create_Party stored procedure, p_Party_Type_FK must be A, C, or I', 0;
    END;


    INSERT INTO [dbo].[Parties]
           (
           [Party_Type_FK],
           [Address_Line_1],
           [Address_Line_2],
           [Address_Line_3],
           [City],
           [State_Province],
           [Zip_Postal_Code],
           [Country],
           [Email],
           [Modified_Date]
           )             
    VALUES
           (
           @p_Party_Type_FK,
           @p_Address_Line_1,
           @p_Address_Line_2,
           @p_Address_Line_3,
           @p_City,
           @p_State_Province,
           @p_Zip_Postal_Code,
           @p_Country,
           @p_Email,
           getdate()
           );

    SELECT @p_out_Party_ID_PK = SCOPE_IDENTITY();

end

GO


