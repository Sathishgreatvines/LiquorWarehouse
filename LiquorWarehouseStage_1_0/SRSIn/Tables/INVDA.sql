﻿CREATE TABLE [SRSIn].[INVDA](
	[RECORDTYPE] [varchar](6) NOT NULL,
	[DISTID] [varchar](8) NOT NULL,
	[VIPSRS] [varchar](5) NULL,
	[RIGLN] [varchar](13) NULL,
	[RIDDAT] [numeric](8, 0) NOT NULL,
	[RIITEM] [varchar](30) NOT NULL,
	[RITRCD] [varchar](2) NOT NULL,
	[RIIDAT] [numeric](8, 0) NOT NULL,
	[RIQTY] [numeric](10, 0) NOT NULL,
	[RIUM] [varchar](1) NOT NULL,
	[RIPO] [varchar](10) NULL,
	[RITRDN] [varchar](35) NULL,
	[RITRST] [varchar](2) NULL,
	[RITSTP] [numeric](26, 0) NOT NULL,
	[RIFMDT] [numeric](8, 0) NOT NULL,
	[RITODT] [numeric](8, 0) NOT NULL,
	[RIDITEM] [varchar](10) NULL,
	[RIITMSTS] [varchar](1) NULL,
	[RIREPACK] [varchar](1) NULL,
	[RIPARENT] [varchar](8) NULL,
	[FILENAME] VARCHAR(100) NOT NULL,
	[SEQID] [int] IDENTITY(1,1) NOT NULL
)