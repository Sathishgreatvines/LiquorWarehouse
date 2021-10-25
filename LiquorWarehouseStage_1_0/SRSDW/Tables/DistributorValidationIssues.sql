CREATE TABLE [SRSDW].[DistributorValidationIssues](
	[SRSDistID] [varchar](10) NULL,
	[SRSAltDistID] [varchar](25) NULL,
	[SRSName] [nvarchar](255) NULL,
	[GVPAccountKey] [varchar](70) NULL,
	[GVPName] [nvarchar](255) NULL,
	[CTLSSum] [varchar](30) NULL,
	[ErrorType] [nvarchar](255) NULL,
	[ErrorMessage] [nvarchar](500) NULL
)