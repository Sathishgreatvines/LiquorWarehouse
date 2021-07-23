CREATE TABLE [dbo].[sd_transaction_status](
	[Id] [uniqueidentifier] NOT NULL,
	[status] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[sd_transaction_status] ADD  DEFAULT (newid()) FOR [Id]
GO