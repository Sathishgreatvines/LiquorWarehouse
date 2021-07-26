﻿CREATE TABLE Temp.GVPgvp__Brand__c (
    [Id]                        char (18)   NOT NULL,
    [IsDeleted]                 VARCHAR (10)   NULL,
    [Name]                      NVARCHAR (100)  NULL,
    [CreatedDate]               DATETIME       NULL,
    [CreatedById]               char (18)   NULL,
    [LastModifiedDate]          DATETIME       NULL,
    [LastModifiedById]          char (18)   NULL,
    [SystemModstamp]            DATETIME       NULL,
    [LastViewedDate]            DATETIME       NULL,
    [LastReferencedDate]        DATETIME       NULL,
    [gvp__Brand_Key__c]         varchar (50)   NULL,
    [gvp__Supplier__c]          char (18)   NULL,
    [gvp__Ownership__c]         varchar (30)   NULL,
    [gvp__Custom_1__c]          NVARCHAR (200)  NULL,
    [gvp__Custom_2__c]          NVARCHAR (200)  NULL,
    [gvp__Key_Brand__c]         VARCHAR (10)   NULL,
    [gvp__Visible_on_Auth__c]   VARCHAR (10)   NULL,
    [gvp__Attachments__c]       DECIMAL (6, 1) NULL,
    [gvp__Custom_Picklist_1__c] NVARCHAR (200)  NULL,
    [gvp__Custom_Picklist_2__c] NVARCHAR (200)  NULL,
    [OwnerId] CHAR(18) NULL, 
    CONSTRAINT [PK_gvp__Brand__c] PRIMARY KEY CLUSTERED ([Id] ASC)
);

