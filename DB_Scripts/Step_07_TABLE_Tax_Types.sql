-- B''H --


-- ------------------------------------------------------------------------------
USE [TaxApp]
GO

IF OBJECT_ID('dbo.Tax_Types', 'U') IS NOT NULL DROP TABLE dbo.[Tax_Types];
GO
-- ------------------------------------------------------------------------------



-- ------------------------------------------------------------------------------
CREATE TABLE [dbo].[Tax_Types](
    [Tax_Type_ID_PK]  [int] IDENTITY(1,1) NOT NULL,
    [Tax_Type_Code]   [nvarchar](1)  NOT NULL,
    [Tax_Type_Desc]   [nvarchar](50) NOT NULL,    
    -- ------------------------------------------------
    [Modified_Date]   [datetime]     NOT NULL CONSTRAINT [DF_Tax_Types_Modified_Date] DEFAULT getdate(),
    -- ------------------------------------------------
    -- PK:
    CONSTRAINT [PK_Tax_Types] PRIMARY KEY CLUSTERED ([Tax_Type_ID_PK] ASC)
)
GO
-- ------------------------------------------------------------------------------



-- ------------------------------------------------------------------------------
CREATE UNIQUE NONCLUSTERED INDEX [IX_Unique_Tax_Type_Code] ON [dbo].[Tax_Types]
(
    [Tax_Type_Code] ASC
)
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_Unique_Tax_Type_Desc] ON [dbo].[Tax_Types]
(
    [Tax_Type_Desc] ASC
)
GO
-- ------------------------------------------------------------------------------



-- ------------------------------------------------------------------------------
INSERT [dbo].[Tax_Types] ([Tax_Type_Code], [Tax_Type_Desc])
select N'A' Tax_Type_Code, N'Automotive Patent' Tax_Type_Desc union all
select N'I', N'Gross Income' union all
select N'R', N'Real Estate' union all
select N'S', N'Stamp Duty' 

-- ADD COMMIT
-- ------------------------------------------------------------------------------