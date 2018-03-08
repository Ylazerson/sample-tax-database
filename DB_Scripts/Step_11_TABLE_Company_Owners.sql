-- B''H --


-- ------------------------------------------------------------------------------
USE [TaxApp]
GO

IF OBJECT_ID('dbo.Company_Owners', 'U') IS NOT NULL DROP TABLE dbo.[Company_Owners];
GO
-- ------------------------------------------------------------------------------



-- ------------------------------------------------------------------------------
CREATE TABLE [dbo].[Company_Owners]
(
    [Company_Party_ID_PK_FK]    [int] NOT NULL,
    [Individual_Party_ID_PK_FK] [int] NOT NULL,
    -- ------------------------------------------------
    [Modified_Date]     [datetime]     NOT NULL CONSTRAINT [DF_Company_Owners_Modified_Date] DEFAULT getdate(),
    -- ------------------------------------------------
    -- PK:
    CONSTRAINT [PK_Company_Owners] PRIMARY KEY CLUSTERED ([Company_Party_ID_PK_FK] ASC, Individual_Party_ID_PK_FK ASC)
)
GO
-- ------------------------------------------------------------------------------






