﻿CREATE TABLE Temp.GVPgvp__Account_Team__c
(
  [Id] char(18) NOT NULL, 
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
	gvp__Account__c char(18) null,
	gvp__Custom_1__c nvarchar(255) null,
	gvp__Custom_2__c nvarchar(255) null,
	gvp__Custom_3__c nvarchar(255) null,
	gvp__Custom_4__c nvarchar(255) null,
	gvp__Custom_5__c nvarchar(255) null,
	gvp__External_Id__c nvarchar(255) null,
	gvp__Manager_1__c char(18) null,
	gvp__Manager_2__c char(18) null,
	gvp__Manager_3__c char(18) null,
	gvp__SalesPerson__c char(18) null,
	gvp__Enable_Sharing__c nvarchar(255) not null,
	gvp__Manager_Contact_1__c char(18) null,
	gvp__Manager_Contact_2__c char(18) null,
	gvp__Manager_Contact_3__c char(18) null,
	gvp__SalesPerson_Contact__c char(18) null,
	gvp__Sales_Team_Division__c char(18) null,
	gvp__Alternate_Contact_1__c char(18) null,
	gvp__Alternate_Contact_2__c char(18) null,
	gvp__Alternate_Contact_3__c char(18) null,
	gvp__Alternate_User_1__c char(18) null,
	gvp__Alternate_User_2__c char(18) null,
	gvp__Alternate_User_3__c char(18) null,
	gvp__End_Date__c date null,
	gvp__Start_Date__c date null,
	gvp__Status__c nvarchar(255) null
    CONSTRAINT [PK_gvp__Account_Team__c] PRIMARY KEY ([Id]) 
)