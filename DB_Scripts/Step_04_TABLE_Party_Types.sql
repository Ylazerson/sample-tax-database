-- B''H --


-- ------------------------------------------------------------------------------
USE [TaxApp]
GO

IF OBJECT_ID('dbo.Party_Types', 'U') IS NOT NULL DROP TABLE dbo.[Party_Types]; 
GO
-- ------------------------------------------------------------------------------



-- ------------------------------------------------------------------------------
CREATE TABLE [dbo].[Party_Types]
(    
    [Party_Type_PK]   [nchar](1)     NOT NULL,
    [Party_Type_Desc] [nvarchar](50) NOT NULL,    
    -- ------------------------------------------------
    [Modified_Date]   [datetime]     NOT NULL CONSTRAINT [DF_Party_Type_Modified_Date] DEFAULT getdate(),
    -- ------------------------------------------------
    -- PK:
    CONSTRAINT [PK_Party_Types] PRIMARY KEY CLUSTERED ([Party_Type_PK] ASC)
)
GO
-- ------------------------------------------------------------------------------



-- ------------------------------------------------------------------------------
CREATE UNIQUE NONCLUSTERED INDEX [IX_Unique_Party_Type_Desc] ON [dbo].[Party_Types]
(
    [Party_Type_Desc] ASC
)
GO
-- ------------------------------------------------------------------------------



-- ------------------------------------------------------------------------------
insert into [dbo].[Party_Types] (Party_Type_PK, Party_Type_Desc)
select N'A' Party_Type_PK, N'Agency' Party_Type_Desc union all
select N'C', N'Company' union all
select N'I', N'Individual' 
 
-- commit;
-- ------------------------------------------------------------------------------
