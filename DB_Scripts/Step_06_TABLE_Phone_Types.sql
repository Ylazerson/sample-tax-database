-- B''H --


-- ------------------------------------------------------------------------------
USE [TaxApp]
GO

IF OBJECT_ID('dbo.Phone_Types', 'U') IS NOT NULL DROP TABLE dbo.[Phone_Types];
GO
-- ------------------------------------------------------------------------------



-- ------------------------------------------------------------------------------
CREATE TABLE [dbo].[Phone_Types](
    [Phone_Type_ID_PK]  [int] IDENTITY(1,1) NOT NULL,
    [Phone_Type_Code]   [nvarchar](1) NOT NULL,
    [Phone_Type_Desc]   [nvarchar](50) NOT NULL,    
    -- ------------------------------------------------
    [Modified_Date]     [datetime]     NOT NULL CONSTRAINT [DF_Phone_Types_Modified_Date] DEFAULT getdate(),
    -- ------------------------------------------------
    -- PK:
    CONSTRAINT [PK_Phone_Types] PRIMARY KEY CLUSTERED ([Phone_Type_ID_PK] ASC)
)
GO
-- ------------------------------------------------------------------------------




-- ------------------------------------------------------------------------------
CREATE UNIQUE NONCLUSTERED INDEX [IX_Unique_Phone_Type_Code] ON [dbo].[Phone_Types]
(
    [Phone_Type_Code] ASC
)
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_Unique_Phone_Type_Desc] ON [dbo].[Phone_Types]
(
    [Phone_Type_Desc] ASC
)
GO
-- ------------------------------------------------------------------------------




-- ------------------------------------------------------------------------------
INSERT [dbo].[Phone_Types] ([Phone_Type_Code], [Phone_Type_Desc])
select N'L' Phone_Type_Code, N'Landilne' Phone_Type_Desc union all
select N'M', N'Mobile' union all
select N'F', N'Fax' union all
select N'H', N'Home' union all
select N'W', N'Work' 

-- ADD COMMIT
-- ------------------------------------------------------------------------------