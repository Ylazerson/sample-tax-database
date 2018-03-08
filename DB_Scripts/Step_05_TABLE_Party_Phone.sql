-- B''H --


-- ------------------------------------------------------------------------------
USE [TaxApp]
GO

IF OBJECT_ID('dbo.Party_Phone', 'U') IS NOT NULL DROP TABLE dbo.[Party_Phone];
GO
-- ------------------------------------------------------------------------------



-- ------------------------------------------------------------------------------
CREATE TABLE [dbo].[Party_Phone]
(
    [Party_Phone_ID_PK] [int] IDENTITY(1,1) NOT NULL,
    -- ------------------------------------------------
    [Party_ID_FK]       [int] NOT NULL,
    [Phone_Type_ID_FK]  [int] NOT NULL,
    -- ------------------------------------------------
    [Phone_Number]      [nvarchar](30) NOT NULL,
    -- ------------------------------------------------
    [Modified_Date]     [datetime]     NOT NULL CONSTRAINT [DF_Party_Phone_Modified_Date] DEFAULT getdate(),
    -- ------------------------------------------------
    -- PK:
    CONSTRAINT [PK_Party_Phone] PRIMARY KEY CLUSTERED ([Party_Phone_ID_PK] ASC)
)
GO
-- ------------------------------------------------------------------------------



-- ------------------------------------------------------------------------------
CREATE UNIQUE NONCLUSTERED INDEX [IX_Unique_Party_Phone] ON [dbo].[Party_Phone]
(
    [Party_ID_FK] ASC,
    [Phone_Type_ID_FK] ASC,
    [Phone_Number] ASC
)
GO
-- ------------------------------------------------------------------------------


