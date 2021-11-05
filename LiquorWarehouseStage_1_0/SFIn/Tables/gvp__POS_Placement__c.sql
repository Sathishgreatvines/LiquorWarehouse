﻿CREATE TABLE [SFIn].[gvp__POS_Placement__c]
(
[Id] [char](18) NOT NULL,
[IsDeleted] [varchar](10) NOT NULL,
[Name] [nvarchar](100) NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedById] [char](18) NOT NULL,
[LastModifiedDate] [datetime] NOT NULL,
[LastModifiedById] [char](18) NOT NULL,
[SystemModstamp] [datetime] NOT NULL,
[LastActivityDate] [datetime] NULL,
[LastViewedDate] [datetime] NULL,
[LastReferencedDate] [datetime] NULL,
[gvp__Account__c] [char](18) NULL,
[gvp__Account_Call__c] [char](18) NULL,
[gvp__Activity_Goal__c] [char](18) NULL,
[gvp__Approved__c] nvarchar(255) NULL,
[gvp__Brand__c] [char](18) NULL,
[gvp__Compliance__c] nvarchar(255) NULL,
	gvp__Custom_1__c nvarchar(255) null,
	gvp__Custom_2__c nvarchar(255) null,
	gvp__Custom_3__c nvarchar(255) null,
	gvp__Custom_4__c nvarchar(255) null,
	gvp__Custom_5__c nvarchar(255) null,
	gvp__Custom_6__c nvarchar(255) null,
    gvp__Custom_7__c nvarchar(255) null,
    gvp__Custom_8__c nvarchar(255) null,
    gvp__Custom_9__c nvarchar(255) null,
    gvp__Custom_10__c nvarchar(255) null,
[gvp__Custom_Fact_1__c] [decimal](16, 2) NULL,
[gvp__Custom_Fact_2__c] [decimal](16, 2) NULL,
[gvp__Date_Delivered__c] [date] NULL,
[gvp__External_Id__c] [char](64) NULL,
[gvp__Item__c] [char](18) NULL,
[gvp__Label__c] [char](18) NULL,
[gvp__POS_Item__c] [char](18) NULL,
[gvp__Picture_Attached__c] nvarchar(255) NULL,
[gvp__Program__c] [char](18) NULL,
[gvp__Quantity__c] [decimal](6, 1) NULL,
[gvp__Account_Call_Send_Email_Date__c] [date] NULL,
[gvp__Account_Call_Send_Email__c] nvarchar(255) NULL,
[gvp__Account_Call_Status__c] nvarchar(255) NULL,
CurrencyIsoCode varchar(10) null DEFAULT 'USD',
CONSTRAINT [PK_gvp__POS_Placement__c] PRIMARY KEY ([Id])
)