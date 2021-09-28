﻿CREATE TABLE [SFIn].[gvp__Label__c] (
    [Id]                         char (18)   NOT NULL,
    [IsDeleted]                  VARCHAR (10)   NULL,
    [Name]                       NVARCHAR (200)  NULL,
    [CreatedDate]                DATETIME       NULL,
    [CreatedById]                char (18)   NULL,
    [LastModifiedDate]           DATETIME       NULL,
    [LastModifiedById]           char (18)   NULL,
    [SystemModstamp]             DATETIME       NULL,
    [LastViewedDate]             DATETIME       NULL,
    [LastReferencedDate]         DATETIME       NULL,
    [gvp__Brand__c]              char (18)   NULL,
    [gvp__Appellation__c]        NVARCHAR (255)   NULL,
    [gvp__Country__c]            NVARCHAR (255)  NULL,
    [gvp__Label_Full_Name__c]    nvarchar(255)  NULL,
    [gvp__Label_Key__c]          VARCHAR (70)   NULL,
    [gvp__Product_Line__c]       NVARCHAR (255)  NULL,
    [gvp__Type__c]               NVARCHAR (255)  NULL,
    [gvp__Region_Sub__c]         NVARCHAR (255)  NULL,
    [gvp__Region__c]             NVARCHAR (255)  NULL,
    [gvp__Variety__c]            NVARCHAR (255)  NULL,
    [gvp__Vineyard__c]           NVARCHAR (255)  NULL,
    [gvp__Broken_Case_Exempt__c] NVARCHAR (255)	NULL,
    [gvp__Ownership__c]          NVARCHAR (255)  NULL,
    [gvp__Custom_1__c]           NVARCHAR (255)  NULL,
    [gvp__Custom_2__c]           NVARCHAR (255)  NULL,
    [gvp__Key_Label__c]          nvarchar(255)   NULL,
    [gvp__Visible_on_Auth__c]    nvarchar(255)   NULL,
    [gvp__Custom_Checkbox_1__c]  nvarchar(255) NULL, 
    [gvp__Custom_Checkbox_2__c]  nvarchar(255) NULL, 
    [gvp__Attachments__c]        DECIMAL (19,1) NULL,
    [gvp__Custom_Picklist_1__c]  nvarchar(255)  NULL,
    [gvp__Custom_Picklist_2__c]  nvarchar(255)  NULL,
    CONSTRAINT [PK_gvp__Label__c] PRIMARY KEY CLUSTERED ([Id] ASC)
);

