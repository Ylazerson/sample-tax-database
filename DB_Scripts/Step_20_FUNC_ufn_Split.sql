-- B''H --


USE TaxApp
GO



/*
select *
from   [dbo].[ufn_Split]('99,1,3', ',')
*/




IF EXISTS (
    SELECT * FROM sysobjects WHERE id = object_id(N'ufn_Split') 
    AND xtype IN (N'FN', N'IF', N'TF')
)
    DROP FUNCTION ufn_Split
GO



CREATE FUNCTION dbo.[ufn_Split] 
(
    @RepParam nvarchar(max), 
    @Delim    char(1) = ','
)
RETURNS @Values TABLE (Item nvarchar(100)) 
AS

    BEGIN
  
        DECLARE @chrind INT
        DECLARE @Piece nvarchar(100)

        SELECT @chrind = 1 
  
        WHILE @chrind > 0
        BEGIN
            
            SELECT @chrind = CHARINDEX(@Delim,@RepParam)
      
            IF @chrind  > 0
                SELECT @Piece = LEFT(@RepParam,@chrind - 1)
            ELSE
                SELECT @Piece = @RepParam
                INSERT  @Values(Item) VALUES(@Piece)
                SELECT @RepParam = RIGHT(@RepParam,LEN(@RepParam) - @chrind)
                
                IF LEN(@RepParam) = 0 BREAK
        END

    RETURN

END 

GO


