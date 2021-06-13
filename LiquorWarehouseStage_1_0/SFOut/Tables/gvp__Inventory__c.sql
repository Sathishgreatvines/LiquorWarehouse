﻿CREATE TABLE [SFOut].[gvp__Inventory__c]
(
	[Id]						char(18)	   null, 
	OwnerId						char(18)	   null,
	IsDeleted					varchar(10)	   null,
	[Name]						nvarchar(100)  null,
	CreatedDate					datetime	   null,
	CreatedById					char(18)	   null,
	LastModifiedDate			datetime	   null,
	LastModifiedById			char(18)	   null,
	SystemModstamp				datetime	   null,
	LastViewedDate				datetime	   null,
	LastReferencedDate			datetime	   null,
	gvp__Date_of_Data__c        date           not null,
	gvp__Inventory_Item_Key__c  varchar(255)   not null,
	gvp__Item__c				char(18)       not null,
	gvp__Item_Lookup__c         char(18)       not null,
	gvp__Item_Number__c         varchar(255)   null,
	gvp__Location__c            varchar(255)   null,
	gvp__Quantity__c			decimal(16,2)  not null,
	gvp__Quantity_On_Hand__c    decimal(16,2)  null,
	gvp__Quantity_On_Order__c   decimal(16,2)  null,
	gvp__Warehouse__c			varchar(18)    not null,
	CONSTRAINT [PK_gvp__Inventory__c] PRIMARY KEY (gvp__Inventory_Item_Key__c)
)
