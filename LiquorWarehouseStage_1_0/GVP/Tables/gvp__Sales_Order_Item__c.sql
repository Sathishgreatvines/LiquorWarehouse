﻿CREATE TABLE [GVP].[gvp__Sales_Order_Item__c]
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
	gvp__Sales_Order__c char(18) null,
	gvp__Extended_Price__c money null,
	gvp__Item__c char(18) null,
	gvp__Price_Level__c nvarchar(100) null,
	gvp__Price__c money null,
	gvp__Quantity__c decimal(10,3) null,
	gvp__Order_Date__c date null,
	gvp__Order_Item_Key__c varchar(60) null,
	gvp__Order_Item_Line__c decimal(4,1) null,
	gvp__Order_Unit__c nvarchar(25) null,
	gvp__Price_Level_Native__c nvarchar(25) null,
	gvp__Brand__c nvarchar(100) null,
	gvp__Label__c nvarchar(100) null,
	gvp__ERP_Id__c varchar(20) null,
	gvp__Distributor_Repack__c varchar(10) not null,
	gvp__Invoice_Discount__c money null,
	gvp__Invoice_Item_Extended_Price__c money null,
	gvp__Invoice_Item__c money null,
	gvp__Invoice_Tax__c money null,
	gvp__Item_Depletion_Allowance__c money null,
	gvp__Quantity_Per_Carton__c varchar(10) null,
	gvp__Supplier_Discount_Participation__c money null,
	gvp__Supplier_Provided_Promotion_Code__c varchar(20) null

    CONSTRAINT [PK_gvp__Sales_Order_Item__c] PRIMARY KEY ([Id]) 
)