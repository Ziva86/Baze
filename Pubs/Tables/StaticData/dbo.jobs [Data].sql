﻿-- =======================================================
-- Synchronization script for table: [dbo].[jobs]
-- =======================================================
Print 'Synchronization script for table: [dbo].[jobs]'

SET IDENTITY_INSERT [dbo].[jobs] ON
INSERT INTO [dbo].[jobs] ([job_id], [job_desc], [min_lvl], [max_lvl]) VALUES (1, 'New Hire - Job not specified', 10, 10)
INSERT INTO [dbo].[jobs] ([job_id], [job_desc], [min_lvl], [max_lvl]) VALUES (2, 'Chief Executive Officer', 200, 250)
INSERT INTO [dbo].[jobs] ([job_id], [job_desc], [min_lvl], [max_lvl]) VALUES (3, 'Business Operations Manager', 175, 225)
INSERT INTO [dbo].[jobs] ([job_id], [job_desc], [min_lvl], [max_lvl]) VALUES (4, 'Chief Financial Officier', 175, 250)
INSERT INTO [dbo].[jobs] ([job_id], [job_desc], [min_lvl], [max_lvl]) VALUES (5, 'Publisher', 150, 250)
INSERT INTO [dbo].[jobs] ([job_id], [job_desc], [min_lvl], [max_lvl]) VALUES (6, 'Managing Editor', 140, 225)
INSERT INTO [dbo].[jobs] ([job_id], [job_desc], [min_lvl], [max_lvl]) VALUES (7, 'Marketing Manager', 120, 200)
INSERT INTO [dbo].[jobs] ([job_id], [job_desc], [min_lvl], [max_lvl]) VALUES (8, 'Public Relations Manager', 100, 175)
INSERT INTO [dbo].[jobs] ([job_id], [job_desc], [min_lvl], [max_lvl]) VALUES (9, 'Acquisitions Manager', 75, 175)
INSERT INTO [dbo].[jobs] ([job_id], [job_desc], [min_lvl], [max_lvl]) VALUES (10, 'Productions Manager', 75, 165)
INSERT INTO [dbo].[jobs] ([job_id], [job_desc], [min_lvl], [max_lvl]) VALUES (11, 'Operations Manager', 75, 150)
INSERT INTO [dbo].[jobs] ([job_id], [job_desc], [min_lvl], [max_lvl]) VALUES (12, 'Editor', 25, 100)
INSERT INTO [dbo].[jobs] ([job_id], [job_desc], [min_lvl], [max_lvl]) VALUES (13, 'Sales Representative', 25, 100)
INSERT INTO [dbo].[jobs] ([job_id], [job_desc], [min_lvl], [max_lvl]) VALUES (14, 'Designer', 25, 100)
SET IDENTITY_INSERT [dbo].[jobs] OFF
