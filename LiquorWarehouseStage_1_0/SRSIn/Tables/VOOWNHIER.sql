CREATE TABLE [SRSIn].[VOOWNHIER]
(
	[RECORDTYPE] [varchar](6) NOT NULL,
	[VPOCHNHCD1] [numeric](16, 0) NOT NULL,
	[VPOCHNHNM1] [varchar](35) NOT NULL,
	[VPOCHNHCD2] [numeric](10, 0) NULL,
	[VPOCHNHNM2] [varchar](35) NULL,
	[VPOCHNHCD3] [numeric](10, 0) NULL,
	[VPOCHNHNM3] [varchar](35) NULL,
	[VPOCHNHCD4] [numeric](10, 0) NULL,
	[VPOCHNHNM4] [varchar](35) NULL,
	[VPOCHNHSTAT] [varchar](1) NULL,
	[FILENAME] [varchar](100) NOT NULL,
    [SEQID]       INT           IDENTITY (1, 1) NOT NULL
)