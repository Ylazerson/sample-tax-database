-- B''H --


-- ------------------------------------------------------------------------------
USE [TaxApp]
GO

IF OBJECT_ID('dbo.Agencies', 'U') IS NOT NULL DROP TABLE dbo.[Agencies];
GO
-- ------------------------------------------------------------------------------



-- ------------------------------------------------------------------------------
CREATE TABLE [dbo].[Agencies](
    [Party_ID_PK_FK]    [int]            NOT NULL,
    [Party_Type_PK_FK]  [nchar](1)       NOT NULL CONSTRAINT [DF_Agencies_Party_Type_PK_FK] DEFAULT 'A',
    -- ------------------------------------------------
    [Agency_Number]     [nvarchar](50)   NOT NULL,    
    -- ------------------------------------------------
    [Modified_Date]     [datetime]       NOT NULL CONSTRAINT [DF_Agencies_Modified_Date] DEFAULT getdate(),
    -- ------------------------------------------------
    -- PK:
    CONSTRAINT [PK_Agencies] PRIMARY KEY CLUSTERED ([Party_ID_PK_FK] ASC, Party_Type_PK_FK ASC),
    -- ------------------------------------------------
    -- Constraint:
    CONSTRAINT [CHK_Agencies_Party_Type_PK_FK] CHECK (Party_Type_PK_FK = 'A')
    -- ------------------------------------------------
)
GO
-- ------------------------------------------------------------------------------


-- ------------------------------------------------------------------------------
CREATE UNIQUE NONCLUSTERED INDEX [IX_Unique_Agencies_Party_ID] ON [dbo].[Agencies]
(
    [Party_ID_PK_FK] ASC
)
GO


CREATE UNIQUE NONCLUSTERED INDEX [IX_Unique_Agency_Number] ON [dbo].[Agencies]
(
    [Agency_Number] ASC
)
GO
-- ------------------------------------------------------------------------------

