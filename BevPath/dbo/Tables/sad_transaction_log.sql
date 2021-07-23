CREATE TABLE [dbo].[sad_transaction_log](
	[Id] [uniqueidentifier] NOT NULL,
	[created] [datetime] NULL,
	[sad_transaction_id] [uniqueidentifier] NOT NULL,
	[log_status] [varchar](50) NOT NULL,
	[log_message] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[sad_transaction_log] ADD  DEFAULT (newid()) FOR [Id]
GO

ALTER TABLE [dbo].[sad_transaction_log] ADD  DEFAULT (getdate()) FOR [created]
GO

ALTER TABLE [dbo].[sad_transaction_log] ADD  DEFAULT (newid()) FOR [sad_transaction_id]
GO

ALTER TABLE [dbo].[sad_transaction_log]  WITH CHECK ADD  CONSTRAINT [fk_sad_transaction_log] FOREIGN KEY([sad_transaction_id])
REFERENCES [dbo].[sd_transaction] ([Id])
GO

ALTER TABLE [dbo].[sad_transaction_log] CHECK CONSTRAINT [fk_sad_transaction_log]
GO