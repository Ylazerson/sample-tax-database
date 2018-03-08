-- B''H --

USE [TaxApp]
GO



if object_id('v_Company_Owner_Payments','v') is not null
drop view v_Company_Owner_Payments;
go



create view [dbo].[v_Company_Owner_Payments] 
as

SELECT   ind.[Party_ID_PK_FK]  [Owner_Party_ID],
         ind.[Document_Number],
         ind.[First_Name],      
         ind.[Last_Name],
         -- ----------------------------------------
         comp.[Party_ID_PK_FK] Company_Party_ID,
         comp.[CUIT_Number],
         -- ----------------------------------------
         case when max(pymt.[Taxpayer_Party_ID_FK]) is not null then 1 else 0 end Has_Payments,
         pymt.[Currency_Code],
         isnull(sum(pymt.[Payment_Amount]), 0) [Total_Payment_Amount]
FROM     [dbo].[Individuals] ind
         -- ----------------------------------------
   inner join [dbo].[Company_Owners] co
      on co.[Individual_Party_ID_PK_FK] = ind.[Party_ID_PK_FK]
         -- ----------------------------------------
   inner join [dbo].[Companies] comp
      on comp.[Party_ID_PK_FK] = co.[Company_Party_ID_PK_FK]
         -- ----------------------------------------
    left outer join  [dbo].[Tax_Payments] pymt
      on pymt.[Taxpayer_Party_ID_FK] = comp.[Party_ID_PK_FK]
         -- ----------------------------------------
group by ind.[Party_ID_PK_FK],
         ind.[Document_Number],
         ind.[First_Name],      
         ind.[Last_Name],      
         comp.[Party_ID_PK_FK],
         comp.[CUIT_Number],      
         pymt.[Currency_Code]


GO