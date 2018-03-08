-- B''H --

USE [TaxApp]
GO



if object_id('v_Taxpayer_Payments','v') is not null
drop view v_Taxpayer_Payments;
go


create view [dbo].[v_Taxpayer_Payments] 
as

SELECT   pymt.[Taxpayer_Party_ID_FK],
         pyr.[Party_Type_PK_FK],
         pyr.[Doc_CUIT_Number],     
         pyr.[Active_Taxpayer],
         -- ----------------------------------------------------
         pymt.[Payment_Date],
         DATEPART(YEAR, [Payment_Date])  [Payment_Year],
         DATEPART(MONTH, [Payment_Date]) [Payment_Month],
         DATENAME(MONTH, [Payment_Date]) [Payment_Month_Name],
         pymt.[Currency_Code],
         pymt.[Payment_Amount]         
from     [dbo].[v_Taxpayers] pyr
   inner join [dbo].[Tax_Payments] pymt
      on pymt.[Taxpayer_Party_ID_FK] = pyr.[Party_ID_PK_FK]


GO