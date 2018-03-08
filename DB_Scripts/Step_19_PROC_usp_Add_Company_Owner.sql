USE [TaxApp]
GO




IF EXISTS ( SELECT * 
            FROM   sysobjects 
            WHERE  id = object_id(N'[dbo].[usp_Add_Company_Owner]') 
                   and OBJECTPROPERTY(id, N'IsProcedure') = 1 )
BEGIN
    DROP PROCEDURE [dbo].[usp_Add_Company_Owner]
END

GO

-- ---------------------------------------------------------------------------------------------------------------
/*
EXECUTE [dbo].[usp_Add_Company_Owner]
    @p_Company_Party_ID_PK   = 1,
    @p_Individual_Party_ID_PK  = 2

*/
-- ---------------------------------------------------------------------------------------------------------------


create procedure [dbo].[usp_Add_Company_Owner]
    @p_Company_Party_ID_PK    int,
    @p_Individual_Party_ID_PK int
as
begin    

    -- -----------------------------------------------------------------
    INSERT INTO [dbo].[Company_Owners]
           (
           [Company_Party_ID_PK_FK],
           [Individual_Party_ID_PK_FK]
           )             
    VALUES
           (
           @p_Company_Party_ID_PK,
           @p_Individual_Party_ID_PK
           );    
    -- -----------------------------------------------------------------

end

GO


