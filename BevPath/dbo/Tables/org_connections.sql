CREATE TABLE [dbo].[org_connections](
	[connect_id] [uniqueidentifier] NOT NULL,
	[target_org_id] [uniqueidentifier] NOT NULL,
	[source_org_id] [uniqueidentifier] NOT NULL,
	[created_by] [uniqueidentifier] NOT NULL,
	[created] [datetime] NULL,
	[updated] [datetime] NULL,
	[isActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[connect_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[org_connections] ADD  DEFAULT (newid()) FOR [connect_id]
GO

ALTER TABLE [dbo].[org_connections] ADD  DEFAULT (newid()) FOR [target_org_id]
GO

ALTER TABLE [dbo].[org_connections] ADD  DEFAULT (newid()) FOR [source_org_id]
GO

ALTER TABLE [dbo].[org_connections] ADD  DEFAULT (newid()) FOR [created_by]
GO

ALTER TABLE [dbo].[org_connections] ADD  DEFAULT (getdate()) FOR [created]
GO

ALTER TABLE [dbo].[org_connections] ADD  DEFAULT (getdate()) FOR [updated]
GO

ALTER TABLE [dbo].[org_connections] ADD  CONSTRAINT [DF_org_connections_isActive]  DEFAULT ((1)) FOR [isActive]
GO

ALTER TABLE [dbo].[org_connections]  WITH CHECK ADD  CONSTRAINT [fk_org_connections_created] FOREIGN KEY([created_by])
REFERENCES [dbo].[users] ([Id])
GO

ALTER TABLE [dbo].[org_connections] CHECK CONSTRAINT [fk_org_connections_created]
GO

ALTER TABLE [dbo].[org_connections]  WITH CHECK ADD  CONSTRAINT [fk_org_connections_distributor] FOREIGN KEY([target_org_id])
REFERENCES [dbo].[orgs] ([org_id])
GO

ALTER TABLE [dbo].[org_connections] CHECK CONSTRAINT [fk_org_connections_distributor]
GO

ALTER TABLE [dbo].[org_connections]  WITH CHECK ADD  CONSTRAINT [fk_org_connections_supplier] FOREIGN KEY([source_org_id])
REFERENCES [dbo].[orgs] ([org_id])
GO

ALTER TABLE [dbo].[org_connections] CHECK CONSTRAINT [fk_org_connections_supplier]
GO
