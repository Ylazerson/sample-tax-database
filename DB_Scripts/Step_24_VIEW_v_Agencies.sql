-- B''H --

USE [TaxApp]
GO



if object_id('v_Agencies','v') is not null
drop view v_Agencies;
go


create view [dbo].[v_Agencies] 
as
select   ag.[Party_ID_PK_FK],
         ag.[Party_Type_PK_FK],
         ag.[Agency_Number],
         isnull(count(ag.[Party_ID_PK_FK]), 0) Employee_Count         
from     [dbo].[Agencies] ag
    left outer join [dbo].[Individuals] ind
      on ind.[Agency_Employer_Party_ID_FK] = ag.[Party_ID_PK_FK] 
group by ag.[Party_ID_PK_FK],
         ag.[Party_Type_PK_FK],
         ag.[Agency_Number]

GO