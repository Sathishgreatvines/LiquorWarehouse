﻿CREATE TABLE [SFIn].[gvp__Account_Activity__c](
	[Id] [char](18) NOT NULL,
	[IsDeleted] [varchar](10) NOT NULL,
	[CreatedById] [char](18) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastActivityDate] [date] NULL,
	[LastModifiedById] [char](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[RecordTypeId] [char](18) NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[gvp__Account__c] [char](18) NULL,
	[gvp__Account_Call__c] [char](18) NULL,
	[gvp__Account_Call_Send_Email__c] [varchar](10) NULL,
	[gvp__Account_Call_Send_Email_Date__c] [date] NULL,
	[gvp__Account_Call_Status__c] [varchar](100) NULL,
	[gvp__Account_KPI__c] [char](18) NULL,
	[gvp__Activity_Goal__c] [char](18) NULL,
	[gvp__Brand__c] [char](18) NULL,
	[gvp__Checkbox_1__c] [char](10) NULL,
	[gvp__Checkbox_2__c] [char](10) NULL,
	[gvp__Checkbox_3__c] [char](10) NULL,
	[gvp__Checkbox_4__c] [char](10) NULL,
	[gvp__Compliance__c] [varchar](255) NULL,
	[gvp__Currency_1__c] [money] NULL,
	[gvp__Currency_2__c] [money] NULL,
	[gvp__Currency_3__c] [money] NULL,
	[gvp__Currency_4__c] [money] NULL,
	[gvp__Date_1__c] [date] NULL,
	[gvp__Date_2__c] [date] NULL,
	[gvp__Date_3__c] [date] NULL,
	[gvp__Date_4__c] [date] NULL,
	[gvp__DateTime_1__c] [datetime] NULL,
	[gvp__DateTime_2__c] [datetime] NULL,
	[gvp__DateTime_3__c] [datetime] NULL,
	[gvp__DateTime_4__c] [datetime] NULL,
	[gvp__Description__c] [nvarchar](255) NULL,
	[gvp__End_Date__c] [datetime] NULL,
	[gvp__External_Id__c] [nvarchar](64) NULL,
	[gvp__Is_Current__c] [varchar](50) NULL,
	[gvp__Item__c] [char](18) NULL,
	[gvp__Label__c] [char](18) NULL,
	[gvp__Number_1__c] [decimal](16, 2) NULL,
	[gvp__Number_2__c] [decimal](16, 2) NULL,
	[gvp__Number_3__c] [decimal](16, 2) NULL,
	[gvp__Number_4__c] [decimal](16, 2) NULL,
	[gvp__Number_5__c] [decimal](16, 2) NULL,
	[gvp__Number_6__c] [decimal](16, 2) NULL,
	[gvp__Number_7__c] [decimal](16, 2) NULL,
	[gvp__Number_8__c] [decimal](16, 2) NULL,
	[gvp__Number_9__c] [decimal](16, 2) NULL,
	[gvp__Number_10__c] [decimal](16, 2) NULL,
	[gvp__Picklist_1__c] [nvarchar](255) NULL,
	[gvp__Picklist_2__c] [nvarchar](255) NULL,
	[gvp__Picklist_3__c] [nvarchar](255) NULL,
	[gvp__Picklist_4__c] [nvarchar](255) NULL,
	[gvp__Price__c] [money] NULL,
	[gvp__Program__c] [char](18) NULL,
	[gvp__Start_Date__c] [datetime] NULL,
	[gvp__Status__c] [varchar](255) NULL,
	[gvp__Text_1__c] [nvarchar](255) NULL,
	[gvp__Text_2__c] [nvarchar](255) NULL,
	[gvp__Text_3__c] [nvarchar](255) NULL,
	[gvp__Text_4__c] [nvarchar](255) NULL,
	[gvp__Text_5__c] [nvarchar](255) NULL,
	[gvp__Text_6__c] [nvarchar](255) NULL,
	[gvp__Text_7__c] [nvarchar](255) NULL,
	[gvp__Text_8__c] [nvarchar](255) NULL,
	[gvp__Text_9__c] [nvarchar](255) NULL,
	[gvp__Text_10__c] [nvarchar](255) NULL,
	[CurrencyIsoCode] [varchar](10) NULL,
 CONSTRAINT [PK_gvp__Account_Activity__c] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [SFIn].[gvp__Account_Activity__c] ADD  DEFAULT ('USD') FOR [CurrencyIsoCode]
GO