-- B''H --


-- ------------------------------------------------------------------------------
USE [TaxApp]
GO

IF OBJECT_ID('dbo.Parties', 'U') IS NOT NULL DROP TABLE dbo.[Parties]; 
GO
-- ------------------------------------------------------------------------------



-- ------------------------------------------------------------------------------
CREATE TABLE [dbo].[Parties]
(
    [Party_ID_PK]            [int] IDENTITY(1,1) NOT NULL,
    [Party_Type_FK]          [nchar](1)      NOT NULL,
    -- ------------------------------------------------
    [Address_Line_1]         [nvarchar](100) NULL,
    [Address_Line_2]         [nvarchar](100) NULL,
    [Address_Line_3]         [nvarchar](100) NULL,
    [City]                   [nvarchar](100) NULL,
    [State_Province]         [nvarchar](100) NULL,
    [Zip_Postal_Code]        [nvarchar](50)  NULL,
    [Country]                [nvarchar](50)  NULL,
    [Email]                  [nvarchar](50)  NULL,
    -- ------------------------------------------------
    [Modified_Date]          [datetime]      NOT NULL CONSTRAINT [DF_Parties_Modified_Date] DEFAULT getdate(),
    -- ------------------------------------------------
    -- PK:
    CONSTRAINT [PK_Parties] PRIMARY KEY CLUSTERED ([Party_ID_PK] ASC),
    -- ------------------------------------------------
    -- Constraint:
    CONSTRAINT CHK_Party_Type_FK CHECK (Party_Type_FK in ('A', 'C', 'I'))
    -- ------------------------------------------------
)
GO
-- ------------------------------------------------------------------------------



-- ------------------------------------------------------------------------------
CREATE UNIQUE NONCLUSTERED INDEX [IX_Unique_Parties] ON [dbo].[Parties]
(
    [Party_ID_PK] ASC,
    Party_Type_FK ASC
)
GO
-- ------------------------------------------------------------------------------