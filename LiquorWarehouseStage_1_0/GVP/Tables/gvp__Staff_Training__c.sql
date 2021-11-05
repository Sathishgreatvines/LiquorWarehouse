﻿CREATE TABLE [GVP].[gvp__Staff_Training__c]
(
	[Id] char(18) NOT NULL ,
	IsDeleted varchar(10) not null,
	Name nvarchar(100) not null,
	CreatedDate datetime not null,
	CreatedById char(18) not null,
	LastModifiedDate datetime not null,
	LastModifiedById char(18) not null,
	SystemModstamp datetime not null,
	LastActivityDate date null,
	LastViewedDate datetime null,
	LastReferencedDate datetime null,
	gvp__Account__c char(18) null,
	gvp__Account_Call__c char(18) null,
	gvp__Activity_Goal__c char(18) null,
	gvp__Date__c date null,
	gvp__Label__c char(18) null,
	gvp__POS_Details__c nvarchar(2000) null,
	gvp__People_Trained__c decimal(4,1),
	gvp__Tasted__c nvarchar(200) null,
	gvp__Item__c char(18) null,
	gvp__Brand__c char(18) null,
	gvp__Program__c char(18) null,
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
	gvp__Custom_Fact_1__c decimal(16,2) null,
	gvp__Custom_Fact_2__c decimal(16,2) null,
	gvp__External_Id__c varchar(70) null,
	gvp__Account_Call_Send_Email_Date__c date null,
	gvp__Account_Call_Send_Email__c varchar(10) null,
	gvp__Account_Call_Status__c nvarchar(50) null, 
	CurrencyIsoCode varchar(10) null DEFAULT 'USD',
    CONSTRAINT [PK_gvp__Staff_Training__c] PRIMARY KEY ([Id]),

)
