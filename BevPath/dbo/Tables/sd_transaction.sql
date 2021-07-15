CREATE TABLE [dbo].[sd_transaction](
	[Id] [uniqueidentifier] NOT NULL,
	[bevpath_connection_id] [uniqueidentifier] NOT NULL,
	[source_org_id] [uniqueidentifier] NOT NULL,
	[status] [uniqueidentifier] NOT NULL,
	[created] [datetime] NULL,
	[updated] [datetime] NULL,
	[send_completed] [datetime] NULL,
	[retry_attempt] [int] NULL,
	[last_attempt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[sd_transaction] ADD  DEFAULT (newid()) FOR [Id]
GO

ALTER TABLE [dbo].[sd_transaction] ADD  DEFAULT (newid()) FOR [source_org_id]
GO

ALTER TABLE [dbo].[sd_transaction] ADD  DEFAULT (newid()) FOR [status]
GO

ALTER TABLE [dbo].[sd_transaction] ADD  DEFAULT (getdate()) FOR [created]
GO

ALTER TABLE [dbo].[sd_transaction] ADD  DEFAULT (getdate()) FOR [updated]
GO

ALTER TABLE [dbo].[sd_transaction] ADD  DEFAULT (getdate()) FOR [send_completed]
GO

ALTER TABLE [dbo].[sd_transaction]  WITH CHECK ADD  CONSTRAINT [fk_org_connection] FOREIGN KEY([bevpath_connection_id])
REFERENCES [dbo].[org_connections] ([connect_id])
GO

ALTER TABLE [dbo].[sd_transaction] CHECK CONSTRAINT [fk_org_connection]
GO

ALTER TABLE [dbo].[sd_transaction]  WITH CHECK ADD  CONSTRAINT [fk_sad_transaction_status] FOREIGN KEY([status])
REFERENCES [dbo].[sd_transaction_status] ([Id])
GO

ALTER TABLE [dbo].[sd_transaction] CHECK CONSTRAINT [fk_sad_transaction_status]
GO