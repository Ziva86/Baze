-- Create type [dbo].[empid]
Print 'Create type [dbo].[empid]'
GO
CREATE TYPE [dbo].[empid]
	FROM [char](9)
	NOT NULL
GO
-- Add permissions to the type [dbo].[empid]
Print 'Add permissions to the type [dbo].[empid]'
GRANT REFERENCES
	ON TYPE::[dbo].[empid]
	TO [public]
GO
