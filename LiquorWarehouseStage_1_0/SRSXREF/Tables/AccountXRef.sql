CREATE TABLE [SRSXREF].[AccountXRef](
	[Id] [char](18) NOT NULL,
	[SFName] [nvarchar](250) NULL,
	[SFBillingStreet] [nvarchar](255) NULL,
	[OUTDAROADDR1] [varchar](35) NOT NULL,
	[OUTDARODBA] [varchar](35) NOT NULL,
	[SFgvp__Dist_Acct_Number__c] [varchar](40) NULL,
	[SFgvp__Account_Key_List__c] [varchar](4000) NULL,
	[OUTDADISTID] [varchar](25) NOT NULL,
	[VPST] [varchar](2) NOT NULL
) ON [PRIMARY]
GO