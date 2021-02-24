﻿CREATE TABLE [SFIN].[gvp__Analytics_Settings__c]
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
    [gvp__Active__c]  varchar(10) NULL, 
    [gvp__Adjust_Goals_By__c]  varchar(40) NULL, 
    [gvp__Adjustment_Amount__c] decimal(5,2) NULL, 
    [gvp__Adjustment_Status__c] VARCHAR(40) NULL, 
    [gvp__Adjustment_Type__c] VARCHAR(150) NULL, 
    [gvp__BI_Reporting_Tool__c] VARCHAR(150) NULL, 
    [gvp__Description__c] VARCHAR(150) NULL, 
    [gvp__Geography_Key__c] VARCHAR(40) NULL, 
    [gvp__Maximum_Goal__c] decimal(5,2) NULL, 
    [gvp__Minimum_Goal__c] decimal(5,2) NULL, 
    [gvp__Named_Credential__c] VARCHAR(40) NULL, 
    [gvp__Profile_Id__c] CHAR(18) NULL, 
    [gvp__Project_Id__c] VARCHAR(255) NOT NULL, 
    [gvp__Sales_Goal_Filter_By_Goal_Plan__c] NCHAR(10) NULL, 
    [gvp__Save_Report_Definition__c] VARCHAR(150) NULL, 
    [gvp__Set_Goal__c] VARCHAR(150) NULL,
	CONSTRAINT [PK_gvp__Analytics_Settings__c] PRIMARY KEY ([Id])
)
