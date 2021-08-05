﻿CREATE TABLE [SRSXREF].[AccountXRef](
	[DistIDRSCust] [varchar](40) NULL,
	[RSCustState] [varchar](40) NULL,
	[DISTID] [varchar](40) NULL,
	[RSCUST] [varchar](25) NULL,
	[SFID] [varchar](25) NULL,
	[AccountKey] [varchar](70) NULL,
	[AccountName] [nvarchar](250) NULL,
	[RawName] [varchar](35) NULL,
	[BillingCity] [nvarchar](100) NULL,
	[RawCity] [varchar](30) NULL,
	[BillingStreet] [varchar](255) NULL,
	[RawStreet] [varchar](35) NULL,
	[AccountCOT] [nvarchar](100) NULL,
	[RawClassofTrade] [varchar](50) NULL,
	[VOXREFState] [varchar](2) NULL,
	[BillingState] [nvarchar](50) NULL,
	[RawState] [varchar](2) NULL,
	[DistributorName] [varchar](40) NULL,
	[DistributorState] [varchar](2) NULL,
	[AccountStatus] [varchar](25) NULL,
	[RawStatus] [varchar](1) NULL,
	[VIPStatus] [varchar](1) NULL,
	[SRSDWHASH] [varchar](255) NULL
) ON [PRIMARY]