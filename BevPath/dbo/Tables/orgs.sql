CREATE TABLE [dbo].[orgs](
	[org_id] [uniqueidentifier] NOT NULL,
	[client_name] [varchar](50) NOT NULL,
	[secret] [varchar](50) NOT NULL,
	[api_endpoint_url] [varchar](50) NOT NULL,
	[api_user_name] [varchar](50) NOT NULL,
	[api_password] [nvarchar](max) NULL,
	[access_token] [varchar](50) NULL,
	[created] [datetime] NULL,
	[created_by] [uniqueidentifier] NOT NULL,
	[updated] [datetime] NULL,
	[isActive] [bit] NULL,
	[token_expiration] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[org_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[orgs] ADD  DEFAULT (newid()) FOR [org_id]
GO

ALTER TABLE [dbo].[orgs] ADD  DEFAULT (getdate()) FOR [created]
GO

ALTER TABLE [dbo].[orgs] ADD  DEFAULT (newid()) FOR [created_by]
GO

ALTER TABLE [dbo].[orgs] ADD  DEFAULT (getdate()) FOR [updated]
GO

ALTER TABLE [dbo].[orgs] ADD  CONSTRAINT [DF_orgs_isActive]  DEFAULT ((1)) FOR [isActive]
GO

ALTER TABLE [dbo].[orgs]  WITH CHECK ADD  CONSTRAINT [fk_org] FOREIGN KEY([created_by])
REFERENCES [dbo].[users] ([Id])
GO

ALTER TABLE [dbo].[orgs] CHECK CONSTRAINT [fk_org]
GO