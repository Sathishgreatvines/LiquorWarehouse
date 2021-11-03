CREATE TABLE [SRSDW].[ProductValidationIssues](
	[SRSITEM] [varchar](30) NULL,
	[GVPitemkey] [varchar](60) NULL,
	[GVPName] [nvarchar](100) NULL,
	[CTLSum] [bigint] NULL,
	[SRSDesc] [nvarchar](70) NULL,
	[ErrorType] [nvarchar](255) NULL,
	[ErrorMessage] [nvarchar](500) NULL
) ON [PRIMARY]
GO

