CREATE TABLE [dbo].[sd_transaction_type](
	[Id] [uniqueidentifier] NOT NULL,
	[type] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[sd_transaction_type] ADD  DEFAULT (newid()) FOR [Id]
GO