USE [TaxApp]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Create_Tax_Payment]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Create_Tax_Payment]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Create_Party]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Create_Party]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Create_Individual]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Create_Individual]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Create_Company]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Create_Company]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Create_Agency]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Create_Agency]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Add_Party_Phone]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Add_Party_Phone]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Add_Company_Owner]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Add_Company_Owner]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Add_Agency_Manager]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Add_Agency_Manager]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tax_Payments_Tax_Types]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tax_Payments]'))
ALTER TABLE [dbo].[Tax_Payments] DROP CONSTRAINT [FK_Tax_Payments_Tax_Types]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tax_Payments_Parties]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tax_Payments]'))
ALTER TABLE [dbo].[Tax_Payments] DROP CONSTRAINT [FK_Tax_Payments_Parties]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tax_Payments_Agencies]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tax_Payments]'))
ALTER TABLE [dbo].[Tax_Payments] DROP CONSTRAINT [FK_Tax_Payments_Agencies]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Party_Phone_Phone_Types]') AND parent_object_id = OBJECT_ID(N'[dbo].[Party_Phone]'))
ALTER TABLE [dbo].[Party_Phone] DROP CONSTRAINT [FK_Party_Phone_Phone_Types]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Party_Phone_Parties]') AND parent_object_id = OBJECT_ID(N'[dbo].[Party_Phone]'))
ALTER TABLE [dbo].[Party_Phone] DROP CONSTRAINT [FK_Party_Phone_Parties]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Parties_Party_Types]') AND parent_object_id = OBJECT_ID(N'[dbo].[Parties]'))
ALTER TABLE [dbo].[Parties] DROP CONSTRAINT [FK_Parties_Party_Types]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Individuals_Parties]') AND parent_object_id = OBJECT_ID(N'[dbo].[Individuals]'))
ALTER TABLE [dbo].[Individuals] DROP CONSTRAINT [FK_Individuals_Parties]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Individuals_Agencies]') AND parent_object_id = OBJECT_ID(N'[dbo].[Individuals]'))
ALTER TABLE [dbo].[Individuals] DROP CONSTRAINT [FK_Individuals_Agencies]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Company_Owners_Individuals]') AND parent_object_id = OBJECT_ID(N'[dbo].[Company_Owners]'))
ALTER TABLE [dbo].[Company_Owners] DROP CONSTRAINT [FK_Company_Owners_Individuals]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Company_Owners_Companies]') AND parent_object_id = OBJECT_ID(N'[dbo].[Company_Owners]'))
ALTER TABLE [dbo].[Company_Owners] DROP CONSTRAINT [FK_Company_Owners_Companies]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Companies_Parties]') AND parent_object_id = OBJECT_ID(N'[dbo].[Companies]'))
ALTER TABLE [dbo].[Companies] DROP CONSTRAINT [FK_Companies_Parties]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Agency_Managers_Individuals]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agency_Managers]'))
ALTER TABLE [dbo].[Agency_Managers] DROP CONSTRAINT [FK_Agency_Managers_Individuals]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Agency_Managers_Agencies]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agency_Managers]'))
ALTER TABLE [dbo].[Agency_Managers] DROP CONSTRAINT [FK_Agency_Managers_Agencies]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Agencies_Parties]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agencies]'))
ALTER TABLE [dbo].[Agencies] DROP CONSTRAINT [FK_Agencies_Parties]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[v_Agencies]'))
DROP VIEW [dbo].[v_Agencies]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ufn_Get_Owner_Total_Payments]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[ufn_Get_Owner_Total_Payments]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[v_Company_Owner_Payments]'))
DROP VIEW [dbo].[v_Company_Owner_Payments]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ufn_Get_Payer_Payments_By_Month]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[ufn_Get_Payer_Payments_By_Month]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[v_Taxpayer_Payments]'))
DROP VIEW [dbo].[v_Taxpayer_Payments]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[v_Taxpayers]'))
DROP VIEW [dbo].[v_Taxpayers]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tax_Types]') AND type in (N'U'))
DROP TABLE [dbo].[Tax_Types]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tax_Payments]') AND type in (N'U'))
DROP TABLE [dbo].[Tax_Payments]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Phone_Types]') AND type in (N'U'))
DROP TABLE [dbo].[Phone_Types]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Party_Types]') AND type in (N'U'))
DROP TABLE [dbo].[Party_Types]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Party_Phone]') AND type in (N'U'))
DROP TABLE [dbo].[Party_Phone]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Parties]') AND type in (N'U'))
DROP TABLE [dbo].[Parties]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Individuals]') AND type in (N'U'))
DROP TABLE [dbo].[Individuals]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Company_Owners]') AND type in (N'U'))
DROP TABLE [dbo].[Company_Owners]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Companies]') AND type in (N'U'))
DROP TABLE [dbo].[Companies]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Agency_Managers]') AND type in (N'U'))
DROP TABLE [dbo].[Agency_Managers]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Agencies]') AND type in (N'U'))
DROP TABLE [dbo].[Agencies]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ufn_Split]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[ufn_Split]
GO

