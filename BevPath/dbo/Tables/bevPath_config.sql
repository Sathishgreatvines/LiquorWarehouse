CREATE TABLE [dbo].[bevPath_config](
	[Id] [uniqueidentifier] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
	[active] [bit] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[bevPath_config] ADD  CONSTRAINT [DF_bevPath_config_Id]  DEFAULT (newid()) FOR [Id]
GO

ALTER TABLE [dbo].[bevPath_config] ADD  CONSTRAINT [DF_bevPath_config_created]  DEFAULT (getdate()) FOR [created]
GO

ALTER TABLE [dbo].[bevPath_config] ADD  CONSTRAINT [DF_bevPath_config_updated]  DEFAULT (getdate()) FOR [updated]
GO
