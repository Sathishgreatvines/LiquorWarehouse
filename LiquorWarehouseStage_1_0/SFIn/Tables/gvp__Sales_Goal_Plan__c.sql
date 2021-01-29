﻿CREATE TABLE [SFIn].[gvp__Sales_Goal_Plan__c]
(
  [Id] CHAR(18) NOT NULL, 
  OwnerId char(18) not null,
  IsDeleted varchar(10) not null,
	Name nvarchar(100) not null,
	CreatedDate datetime not null,
	CreatedById char(18) not null,
	LastModifiedDate datetime not null,
	LastModifiedById char(18) not null,
	SystemModstamp datetime not null,
	LastViewedDate datetime null,
	LastReferencedDate datetime null,
	gvp__End_Date__c date null,
  gvp__External_Id__c varchar(25) null,
 	gvp__Goal_Plan_Description__c nvarchar(255) null,
	gvp__Goal_Plan_Name__c nvarchar(300) null,
	gvp__Parent_Goal_Plan__c char(18) null,
	gvp__Product__c nvarchar(100) null,
	gvp__Record_Type__c NVARCHAR(100) null,
	gvp__Sales_Goal__c char(18) null,
	gvp__Start_Date__c date null,
	gvp__Cloning__c varchar(10) null,
	gvp__Goal_Level__c nvarchar(100) null,
	gvp__Is_Active__c varchar(10) null,
	gvp__Custom_Fact_1__c decimal(12,8) null,
	gvp__Custom_Fact_2__c decimal(12,8) null,
	gvp__Custom_Fact_3__c decimal(12,8) null, 
	gvp__Custom_Text_1__c nvarchar(100) null,
	gvp__Custom_Text_2__c nvarchar(100) null,
	gvp__Custom_Text_3__c nvarchar(100) null,
	gvp__Custom_Text_4__c nvarchar(100) null,
	gvp__Custom_Text_5__c nvarchar(100) null,
	gvp__Goal_Period__c nvarchar(100) null,
	gvp__Goal_Type__c nvarchar(100) null,
	gvp__Product_Name__c nvarchar(100) null,
	gvp__Published__c varchar(10) null,
	gvp__Enable_Logging__c varchar(10) null,
	gvp__Secondary_Attribute__c nvarchar(100) null
    CONSTRAINT [PK_gvp__Sales_Goal_Plan__c] PRIMARY KEY ([Id])

)
