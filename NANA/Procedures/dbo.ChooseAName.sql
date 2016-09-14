SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
 
/* Next, Create a procedure to receive data for the table-valued parameter, the table of names and select one item from the table*/
CREATE PROCEDURE ChooseAName
  @CandidateNames Names READONLY
AS 
DECLARE @candidates TABLE (NAME VARCHAR(10),
                           theOrder UNIQUEIDENTIFIER)
INSERT  INTO @candidates (name, theorder)
        SELECT  name, NEWID()
        FROM    @CandidateNames
SELECT TOP 1
        NAME
FROM    @Candidates
ORDER BY theOrder
GO
