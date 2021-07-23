CREATE TABLE [dbo].[users_access](
	[Id] [uniqueidentifier] NOT NULL,
	[user_id] [uniqueidentifier] NOT NULL,
	[manage_orgs] [bit] NOT NULL,
	[created] [datetime] NULL,
	[updated] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[users_access] ADD  DEFAULT (newid()) FOR [Id]
GO

ALTER TABLE [dbo].[users_access] ADD  DEFAULT (newid()) FOR [user_id]
GO

ALTER TABLE [dbo].[users_access] ADD  DEFAULT ('FALSE') FOR [manage_orgs]
GO

ALTER TABLE [dbo].[users_access] ADD  CONSTRAINT [DF_users_access_created]  DEFAULT (getdate()) FOR [created]
GO

ALTER TABLE [dbo].[users_access]  WITH CHECK ADD  CONSTRAINT [fk_users_access] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([Id])
GO

ALTER TABLE [dbo].[users_access] CHECK CONSTRAINT [fk_users_access]
GO
