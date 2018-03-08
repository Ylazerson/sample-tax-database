USE [TaxApp]
GO




IF EXISTS ( SELECT * 
            FROM   sysobjects 
            WHERE  id = object_id(N'[dbo].[usp_Add_Agency_Manager]') 
                   and OBJECTPROPERTY(id, N'IsProcedure') = 1 )
BEGIN
    DROP PROCEDURE [dbo].[usp_Add_Agency_Manager]
END

GO

-- ---------------------------------------------------------------------------------------------------------------
/*
EXECUTE [dbo].[usp_Add_Agency_Manager]
    @p_Agency_Party_ID_PK   = 1,
    @p_Manager_Party_ID_PK  = 2

*/
-- ---------------------------------------------------------------------------------------------------------------


create procedure [dbo].[usp_Add_Agency_Manager]
    @p_Agency_Party_ID_PK   int,
    @p_Manager_Party_ID_PK  int
as
begin    

    -- -----------------------------------------------------------------
    INSERT INTO [dbo].[Agency_Managers]
           (
           [Agency_Party_ID_PK_FK],
           [Manager_Party_ID_PK_FK]
           )             
    VALUES
           (
           @p_Agency_Party_ID_PK,
           @p_Manager_Party_ID_PK
           );    
    -- -----------------------------------------------------------------

end

GO


