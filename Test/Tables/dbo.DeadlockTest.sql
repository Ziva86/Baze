SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[DeadlockTest] (
		[Deadlock_Key]       [int] NOT NULL,
		[Deadlock_Count]     [int] NULL
)
GO
ALTER TABLE [dbo].[DeadlockTest]
	ADD
	CONSTRAINT [PK__Deadlock__2CFD42BDDCB92337]
	PRIMARY KEY
	CLUSTERED
	([Deadlock_Key])
	ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'x x   ', 'SCHEMA', N'dbo', 'TABLE', N'DeadlockTest', NULL, NULL
GO
ALTER TABLE [dbo].[DeadlockTest] SET (LOCK_ESCALATION = TABLE)
GO
