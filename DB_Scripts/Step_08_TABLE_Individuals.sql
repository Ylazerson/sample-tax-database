-- B''H --


-- ------------------------------------------------------------------------------
USE [TaxApp]
GO

IF OBJECT_ID('dbo.Individuals', 'U') IS NOT NULL DROP TABLE dbo.[Individuals];
GO
-- ------------------------------------------------------------------------------



-- ------------------------------------------------------------------------------
CREATE TABLE [dbo].[Individuals](
    [Party_ID_PK_FK]               [int]           NOT NULL,
    [Party_Type_PK_FK]             [nchar](1)      NOT NULL CONSTRAINT [DF_Individuals_Party_Type_PK_FK] DEFAULT 'I',
    -- ------------------------------------------------
    [Document_Number]              [nvarchar](50)  NOT NULL,
    [First_Name]                   [nvarchar](100) NOT NULL,
    [Middle_Name]                  [nvarchar](100) NULL,
    [Last_Name]                    [nvarchar](100) NOT NULL,
    [DOB]                          [date]          NOT NULL,
    [Active_Taxpayer]              [bit]           NOT NULL,
    [Agency_Employer_Party_ID_FK]  [int]           NULL,
    -- ------------------------------------------------
    [Modified_Date]                [datetime]      NOT NULL CONSTRAINT [DF_Individuals_Modified_Date] DEFAULT getdate(),
    -- ------------------------------------------------
    -- PK:
    CONSTRAINT [PK_Individuals] PRIMARY KEY CLUSTERED ([Party_ID_PK_FK] ASC, Party_Type_PK_FK ASC),
    -- ------------------------------------------------
    -- Constraint:
    CONSTRAINT [CHK_Individuals_Party_Type_PK_FK] CHECK (Party_Type_PK_FK = 'I')
    -- ------------------------------------------------
)
GO
-- ------------------------------------------------------------------------------



-- ------------------------------------------------------------------------------
CREATE UNIQUE NONCLUSTERED INDEX [IX_Unique_Individuals_Party_ID] ON [dbo].[Individuals]
(
    [Party_ID_PK_FK] ASC
)
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_Unique_Document_Number] ON [dbo].[Individuals]
(
    [Document_Number] ASC
)
GO
-- ------------------------------------------------------------------------------