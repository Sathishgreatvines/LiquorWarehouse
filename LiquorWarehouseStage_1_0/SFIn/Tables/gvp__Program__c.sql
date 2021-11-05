﻿CREATE TABLE [SFIn].[gvp__Program__c]
(
	[Id] char(18) NOT NULL ,
	IsDeleted varchar(10) not null,
	Name nvarchar(100) not null,
    RecordTypeId char(18) not null,
	CreatedDate datetime not null,
	CreatedById char(18) not null,
	LastModifiedDate datetime not null,
	LastModifiedById char(18) not null,
	SystemModstamp datetime not null,
	LastActivityDate date null,
	LastViewedDate datetime null,
	LastReferencedDate datetime null,
	gvp__Budget_Plan__c char(18) null,
	gvp__Active__c varchar(255) null,
	gvp__Territory_Lookup__c char(18) null,
	gvp__Brand_Rate_per_Incremental_Case__c money null,
	gvp__Brand_Rate_per_Total_Cases__c money null,
	gvp__Brand__c nvarchar(255) null,
	gvp__Chain__c decimal(4,1) null,
	gvp__Channel_Allocated__c decimal(12,8) null,
	gvp__Charged_to_Brand__c decimal(12,8) null,
	gvp__Cost_to_Brand__c money null,
	gvp__Cost_to_Distributor__c money null,
	gvp__Description_of_Promotion__c nvarchar(MAX) null,
	gvp__Distributor_Rate_per_Incremental_Case__c money null,
	gvp__Distributor_Rate_per_Total_Cases__c money null,
	gvp__Distributor__c char(18) null,
	gvp__Division__c nvarchar(255) null,
	gvp__End_Date__c date null,
	gvp__Est_Program_Volume__c decimal(26,8) null,
	gvp__Incremental_Volume__c decimal(26,8) null,
	gvp__Item__c char(18) null,
	gvp__Label__c char(18) null,
	gvp__Off_premise__c decimal(6,3) null,
	gvp__On_premise__c decimal(6,3) null,
	gvp__Parent_Program__c char(18) null,
	gvp__Program_Budget_Balance__c money null,
	gvp__Program_Code__c nvarchar(255) null,
	gvp__Program_Goal__c nvarchar(255) null,
	gvp__Program_Manager__c char(18) null,
	gvp__Region__c nvarchar(255) null,
	gvp__Start_Date__c date null,
	gvp__Territory__c nvarchar(255) null,
	gvp__Total_Program_Cost__c decimal(18,4) null,
	gvp__Type__c nvarchar(255) null,
	gvp__x_Charged_to_Distributor__c decimal(6,3) null,
	gvp__Total_Chargebacks__c decimal(18,4) null,
	gvp__Supplier__c nvarchar(255) null,
	gvp__Status__c nvarchar(255) null,
	gvp__Amount_Actual__c money null,
	gvp__Amount_Committed__c money null,
	gvp__Program_Balance__c money null,
	gvp__Total_Program_Spend__c money null,
	gvp__Account_Segment__c char(18) null,
	gvp__Brand_lookup__c char(18) null,
	gvp__Amount_Planned__c money null,
	gvp__Cost_Center__c nvarchar(255) null,
	gvp__Custom_Currency_1__c money null,
	gvp__Custom_Currency_2__c money null,
	gvp__Custom_Date_1__c date null,
	gvp__Custom_Date_2__c date null,
	gvp__Custom_Number_1__c decimal(26,8) null,
	gvp__Custom_Number_2__c decimal(26,8) null,
	gvp__Custom_Picklist_1__c nvarchar(255) null,
	gvp__Custom_Picklist_2__c nvarchar(255) null,
	gvp__Custom_Text_1__c nvarchar(300) null,
	gvp__Custom_Text_2__c nvarchar(300) null,
	gvp__Custom_Text_3__c nvarchar(255) null,
	gvp__Custom_Text_4__c nvarchar(270) null,
	gvp__Custom_Text_5__c nvarchar(255) null,
	gvp__Spend_Type__c nvarchar(255) null, 
	CurrencyIsoCode varchar(10) null DEFAULT 'USD',
    CONSTRAINT [PK_gvp__Program__c] PRIMARY KEY ([Id])
)
