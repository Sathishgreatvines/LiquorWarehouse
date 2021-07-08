CREATE TABLE [SRSXREF].[AccountXRef](
	[Id] [char](18) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[BillingStreet] [nvarchar](255) NULL,
	[ROADDR1] [varchar](35) NOT NULL,
	[RODBA] [varchar](35) NOT NULL,
	[gvp__Dist_Acct_Number__c] [varchar](40) NULL,
	[gvp__Account_Key_List__c] [varchar](4000) NULL,
	[DISTID] [varchar](25) NOT NULL,
	[VPST] [varchar](2) NOT NULL
) ON [PRIMARY]
GO