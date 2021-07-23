CREATE TABLE [dbo].[users](
	[Id] [uniqueidentifier] NOT NULL,
	[display_name] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[created] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[users] ADD  DEFAULT (newid()) FOR [Id]
GO

ALTER TABLE [dbo].[users] ADD  DEFAULT (getdate()) FOR [created]
GO
