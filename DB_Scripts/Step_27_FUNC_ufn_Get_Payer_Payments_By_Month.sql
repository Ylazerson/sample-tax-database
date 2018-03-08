USE [TaxApp]
GO



-- -------------------------------------------------------------------------------------------------------
/*

-- @p_Taxpayer_Party_ID int
-- @p_Doc_CUIT_Number   nvarchar(50)
-- @p_Active_Taxpayer   bit
-- @p_Currency_Code     nchar(3)

select   *
from     dbo.ufn_Get_Payer_Payments_By_Month(null, 'FDDDDA-456', null, null)
order by [Taxpayer_Party_ID_FK],
         [Payment_Year]   desc,
         [Payment_Month]  desc,
         [Currency_Code] 


select   *
from     dbo.ufn_Get_Payer_Payments_By_Month(18, null, null, 'USD')            


select   *
from     dbo.ufn_Get_Payer_Payments_By_Month(null, null, 1, null)

select   *
from     dbo.ufn_Get_Payer_Payments_By_Month(null, null, null, 'CAD')

*/
-- -------------------------------------------------------------------------------------------------------

IF EXISTS (
    SELECT * FROM sysobjects WHERE id = object_id(N'ufn_Get_Payer_Payments_By_Month') 
    AND xtype IN (N'FN', N'IF', N'TF')
)
    DROP FUNCTION ufn_Get_Payer_Payments_By_Month
GO



CREATE FUNCTION [dbo].[ufn_Get_Payer_Payments_By_Month] 
    (     
     @p_Taxpayer_Party_ID int,
     @p_Doc_CUIT_Number   nvarchar(50),
     @p_Active_Taxpayer   bit,
     @p_Currency_Code     nchar(3)
    ) RETURNS TABLE
AS
RETURN

    SELECT   [Taxpayer_Party_ID_FK],
             [Party_Type_PK_FK],
             [Doc_CUIT_Number],
             [Active_Taxpayer],
             [Currency_Code],
             [Payment_Year],
             [Payment_Month],
             [Payment_Month_Name],         
             sum([Payment_Amount]) Total_Payment_Amount
    FROM     [dbo].[v_Taxpayer_Payments]
    WHERE    [Taxpayer_Party_ID_FK] = isnull(@p_Taxpayer_Party_ID, [Taxpayer_Party_ID_FK])
      and    [Doc_CUIT_Number]      = isnull(@p_Doc_CUIT_Number,   [Doc_CUIT_Number])
      and    [Active_Taxpayer]      = isnull(@p_Active_Taxpayer,   [Active_Taxpayer])
      and    [Currency_Code]        = isnull(@p_Currency_Code,     [Currency_Code])
    group by [Taxpayer_Party_ID_FK],
             [Party_Type_PK_FK],
             [Doc_CUIT_Number],
             [Active_Taxpayer],
             [Currency_Code],
             [Payment_Year],
             [Payment_Month],
             [Payment_Month_Name]   
GO


