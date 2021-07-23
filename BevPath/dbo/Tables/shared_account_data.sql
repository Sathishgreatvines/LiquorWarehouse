CREATE TABLE [dbo].[shared_account_data](
	[Id] [uniqueidentifier] NOT NULL,
	[created] [datetime] NULL,
	[updated] [datetime] NULL,
	[sad_transaction_id] [uniqueidentifier] NOT NULL,
	[data] NVARCHAR(MAX) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[shared_account_data] ADD  CONSTRAINT [DF_shared_account_data_Id]  DEFAULT (newid()) FOR [Id]
GO

ALTER TABLE [dbo].[shared_account_data] ADD  CONSTRAINT [DF_shared_account_data_created]  DEFAULT (getdate()) FOR [created]
GO

ALTER TABLE [dbo].[shared_account_data] ADD  CONSTRAINT [DF_shared_account_data_updated]  DEFAULT (getdate()) FOR [updated]
GO