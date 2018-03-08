-- B''H --


-- ------------------------------------------------------------------------------
USE [TaxApp]
GO

IF OBJECT_ID('dbo.Tax_Payments', 'U') IS NOT NULL DROP TABLE dbo.[Tax_Payments];
GO
-- ------------------------------------------------------------------------------



-- ------------------------------------------------------------------------------
CREATE TABLE [dbo].[Tax_Payments]
(
    [Tax_Payment_ID_PK]     [int] IDENTITY(1,1) NOT NULL,
    -- ------------------------------------------------
    [Tax_Type_ID_FK]        [int]               NOT NULL,
    [Agency_Party_ID_FK]    [int]               NOT NULL,
    [Taxpayer_Party_ID_FK]  [int]               NOT NULL,
    [Payment_Date]          [datetimeoffset](0) NOT NULL,
    [Currency_Code]         [nchar](3)          NOT NULL,
    [Payment_Amount]        [decimal](15, 2)    NOT NULL,
    -- ------------------------------------------------
    [Modified_Date]         [datetime]          NOT NULL CONSTRAINT [DF_Tax_Payments_Modified_Date] DEFAULT getdate(),
    -- ------------------------------------------------
    -- PK:
    CONSTRAINT [PK_Tax_Payments] PRIMARY KEY CLUSTERED ([Tax_Payment_ID_PK] ASC)
)
GO
-- ------------------------------------------------------------------------------




-- ------------------------------------------------------------------------------
CREATE UNIQUE NONCLUSTERED INDEX [IX_Unique_Tax_Payments] ON [dbo].[Tax_Payments]
(
    [Tax_Type_ID_FK] ASC,
    [Agency_Party_ID_FK] ASC,
    [Taxpayer_Party_ID_FK] ASC,
    [Payment_Date] ASC
)
GO
-- ------------------------------------------------------------------------------

