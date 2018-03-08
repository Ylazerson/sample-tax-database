-- B''H --

USE [TaxApp]
GO



if object_id('v_Taxpayers','v') is not null
drop view v_Taxpayers;
go


create view [dbo].[v_Taxpayers] 
as

SELECT   [Party_ID_PK_FK],
         [Party_Type_PK_FK],
         [Document_Number]  [Doc_CUIT_Number],     
         [Active_Taxpayer]
FROM     [dbo].[Individuals]
union all
SELECT   [Party_ID_PK_FK],
         [Party_Type_PK_FK],
         [CUIT_Number],
         1 [Active_Taxpayer]
FROM     [dbo].[Companies]


GO