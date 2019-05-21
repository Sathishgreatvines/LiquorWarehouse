﻿CREATE TABLE [SFIn].[gvp__Depletion__c]
(
  [Id] char(18) NOT NULL, 
	IsDeleted varchar(10) not null,
	Name nvarchar(100) not null,
	CreatedDate datetime not null,
	CreatedById char(18) not null,
	LastModifiedDate datetime not null,
	LastModifiedById char(18) not null,
	SystemModstamp datetime not null,
	LastViewedDate datetime null,
	LastReferencedDate datetime null,
	gvp__Distributor__c char(18) null,
	gvp__Brand__c nvarchar(100) null,
	gvp__Cases_YTD__c decimal(9,4) null,
	gvp__Date__c date null,
	gvp__Item__c char(18) null,
	gvp__Label__c nvarchar(100) null,
	gvp__Physical_Cases__c decimal(9,4) null,
	gvp__X9L_Cases__c DECIMAL(7, 5) null,
	gvp__Goal__c nvarchar(60) null,
	gvp__Territory_Goal__c char(18) null,
	gvp__BDN_Adjustments__c decimal(9,2) null,
	gvp__BDN_Closing_Balance__c MONEY null,
	gvp__BDN_Created_Date__c date null,
	gvp__BDN_In_Bond__c decimal(7,2) null,
	gvp__BDN_On_Order__c decimal(7,2) null,
	gvp__BDN_Opening_Balance__c MONEY null,
	gvp__BDN_Receipts__c decimal(7,2) null,
	gvp__BDN_Transfers_In__c decimal(7,2) null,
	gvp__BDN_Transfers_Out__c decimal(7,2) null,
	gvp__BDN_Wholesale_Sales__c decimal(7,2) null,
	gvp__Depletion_Key__c varchar(95) null,
	gvp__Month__c DECIMAL(2) null,
	gvp__Year__c varchar(4) null,
	gvp__Source_File__c varchar(80) null,
	gvp__Custom_1__c nvarchar(200) null,
	gvp__Custom_2__c nvarchar(200) null,
	gvp__Custom_Fact_1__c decimal(12,9) null,
	gvp__Custom_Fact_2__c decimal(12,9) null,
	gvp__Distributor_Item_Number__c varchar(20) null,
	gvp__Source_System__c nvarchar(20) null
    CONSTRAINT [PK_gvp__Depletion__c] PRIMARY KEY ([Id]) 
)
