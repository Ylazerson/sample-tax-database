-- B''H --


-- ------------------------------------------------------------------------------
USE [TaxApp]
GO

IF OBJECT_ID('dbo.Agency_Managers', 'U') IS NOT NULL DROP TABLE dbo.[Agency_Managers];
GO
-- ------------------------------------------------------------------------------



-- ------------------------------------------------------------------------------
CREATE TABLE [dbo].[Agency_Managers]
(
    [Agency_Party_ID_PK_FK]    [int] NOT NULL,
    [Manager_Party_ID_PK_FK] [int] NOT NULL,
    -- ------------------------------------------------
    [Modified_Date]     [datetime]     NOT NULL CONSTRAINT [DF_Agency_Managers_Modified_Date] DEFAULT getdate(),
    -- ------------------------------------------------
    -- PK:
    CONSTRAINT [PK_Agency_Managers] PRIMARY KEY CLUSTERED ([Agency_Party_ID_PK_FK] ASC, Manager_Party_ID_PK_FK ASC)
)
GO
-- ------------------------------------------------------------------------------




