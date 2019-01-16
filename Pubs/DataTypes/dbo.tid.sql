-- Create type [dbo].[tid]
Print 'Create type [dbo].[tid]'
GO
CREATE TYPE [dbo].[tid]
	FROM [varchar](6)
	NOT NULL
GO
-- Add permissions to the type [dbo].[tid]
Print 'Add permissions to the type [dbo].[tid]'
GRANT REFERENCES
	ON TYPE::[dbo].[tid]
	TO [public]
GO
