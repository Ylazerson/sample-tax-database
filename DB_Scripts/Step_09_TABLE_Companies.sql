-- B''H --


-- ------------------------------------------------------------------------------
USE [TaxApp]
GO

IF OBJECT_ID('dbo.Companies', 'U') IS NOT NULL DROP TABLE dbo.[Companies];
GO
-- ------------------------------------------------------------------------------



-- ------------------------------------------------------------------------------
CREATE TABLE [dbo].[Companies](
    [Party_ID_PK_FK]    [int]               NOT NULL,
    [Party_Type_PK_FK]  [nchar](1)          NOT NULL CONSTRAINT [DF_Companies_Party_Type_PK_FK] DEFAULT 'C',
    -- ------------------------------------------------
    [CUIT_Number]       [nvarchar](50)      NOT NULL,
    [Commencement_Date] [date]              NOT NULL,
    [Website]           [nvarchar](2000)    NULL,
    -- ------------------------------------------------
    [Modified_Date]     [datetime]          NOT NULL CONSTRAINT [DF_Companies_Modified_Date] DEFAULT getdate(),
    -- ------------------------------------------------
    -- PK:
    CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED ([Party_ID_PK_FK] ASC, Party_Type_PK_FK ASC),
    -- ------------------------------------------------
    -- Constraint:
    CONSTRAINT [CHK_Companies_Party_Type_PK_FK] CHECK (Party_Type_PK_FK = 'C')
    -- ------------------------------------------------
)
GO
-- ------------------------------------------------------------------------------



-- ------------------------------------------------------------------------------
CREATE UNIQUE NONCLUSTERED INDEX [IX_Unique_Companies_Party_ID] ON [dbo].[Companies]
(
    [Party_ID_PK_FK] ASC
)
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_Unique_CUIT_Number] ON [dbo].[Companies]
(
    [CUIT_Number] ASC
)
GO
-- ------------------------------------------------------------------------------
