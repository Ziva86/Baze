-- Create type [dbo].[id]
Print 'Create type [dbo].[id]'
GO
CREATE TYPE [dbo].[id]
	FROM [varchar](11)
	NOT NULL
GO
-- Add permissions to the type [dbo].[id]
Print 'Add permissions to the type [dbo].[id]'
GRANT REFERENCES
	ON TYPE::[dbo].[id]
	TO [public]
GO
