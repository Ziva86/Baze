SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
-- Create procedure [dbo].[byroyalty]
Print 'Create procedure [dbo].[byroyalty]'
GO

CREATE PROCEDURE byroyalty @percentage int
AS
select au_id from titleauthor
where titleauthor.royaltyper = @percentage

GO
