-- Create view [dbo].[titleview]
Print 'Create view [dbo].[titleview]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW titleview
AS
select title, au_ord, au_fname, pubdate, price, ytd_sales, pub_id
from authors, titles, titleauthor
where authors.au_id = titleauthor.au_id
   AND titles.title_id = titleauthor.title_id

GO
