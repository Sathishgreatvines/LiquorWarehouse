CREATE TABLE [dbo].[sd_log_entry](
	[Id] [uniqueidentifier] NOT NULL,
	[created] [datetime] NULL,
	[updated] [datetime] NULL,
	[sad_transaction_id] [uniqueidentifier] NOT NULL,
	[log_message] [text] NOT NULL,
	[log_status] [text] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[sd_log_entry] ADD  DEFAULT (newid()) FOR [Id]
GO

ALTER TABLE [dbo].[sd_log_entry] ADD  DEFAULT (getdate()) FOR [created]
GO

ALTER TABLE [dbo].[sd_log_entry] ADD  DEFAULT (getdate()) FOR [updated]
GO

ALTER TABLE [dbo].[sd_log_entry] ADD  DEFAULT (newid()) FOR [sad_transaction_id]
GO

ALTER TABLE [dbo].[sd_log_entry]  WITH CHECK ADD  CONSTRAINT [fk_sa_data] FOREIGN KEY([sad_transaction_id])
REFERENCES [dbo].[sd_transaction] ([Id])
GO

ALTER TABLE [dbo].[sd_log_entry] CHECK CONSTRAINT [fk_sa_data]
GO


