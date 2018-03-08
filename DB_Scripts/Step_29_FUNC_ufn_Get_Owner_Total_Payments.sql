USE [TaxApp]
GO



-- -------------------------------------------------------------------------------------------------------
/*

-- @p_Owner_Party_ID   int
-- @p_Document_Number  nvarchar(50)
-- @p_Has_Payments     int
-- @p_Currency_Code    nchar(3)

select   *
from     dbo.ufn_Get_Owner_Total_Payments(null, 'DX15245-456', null, null)
order by 1, 5


select   *
from     dbo.ufn_Get_Owner_Total_Payments(null, 'DX15245-456', null, 'USD')
order by 1, 5

select   *
from     dbo.ufn_Get_Owner_Total_Payments(null, null, 1, null)       

*/
-- -------------------------------------------------------------------------------------------------------

IF EXISTS (
    SELECT * FROM sysobjects WHERE id = object_id(N'ufn_Get_Owner_Total_Payments') 
    AND xtype IN (N'FN', N'IF', N'TF')
)
    DROP FUNCTION ufn_Get_Owner_Total_Payments
GO



CREATE FUNCTION [dbo].[ufn_Get_Owner_Total_Payments] 
    (     
     @p_Owner_Party_ID   int,
     @p_Document_Number  nvarchar(50),
     @p_Has_Payments     int,
     @p_Currency_Code    nchar(3)
    ) RETURNS TABLE
AS
RETURN

    SELECT   [Owner_Party_ID],
             [Document_Number],
             [First_Name],
             [Last_Name],
             [Company_Party_ID],
             [CUIT_Number],
             [Has_Payments],
             [Currency_Code],
             [Total_Payment_Amount]
   FROM      [dbo].[v_Company_Owner_Payments]
    WHERE    [Owner_Party_ID]             = isnull(@p_Owner_Party_ID,  [Owner_Party_ID])
      and    [Document_Number]            = isnull(@p_Document_Number, [Document_Number])
      and    [Has_Payments]               = isnull(@p_Has_Payments,    [Has_Payments])
      and    isnull([Currency_Code], 'X') = isnull(@p_Currency_Code,   isnull([Currency_Code], 'X'))


GO


