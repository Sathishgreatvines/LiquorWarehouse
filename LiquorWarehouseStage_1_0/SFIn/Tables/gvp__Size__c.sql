﻿CREATE TABLE [SFIn].[gvp__Size__c] (
    [Id]                                char (18)     NOT NULL,
    [IsDeleted]                         VARCHAR (10)     NULL,
    [Name]                              NVARCHAR (200)    NULL,
    [CreatedDate]                       DATETIME         NULL,
    [CreatedById]                       char(18)         NULL,
    [LastModifiedDate]                  DATETIME         NULL,
    [LastModifiedById]                  char (18)     NULL,
    [SystemModstamp]                    DATETIME         NULL,
    [LastViewedDate]                    DATETIME         NULL,
    [LastReferencedDate]                DATETIME         NULL,
    [gvp__Liter_Volume__c]              DECIMAL (21, 12)   NULL,
    [gvp__Size_Key__c]                  NVARCHAR(255)     NULL,
    [gvp__X9_Liter_Eqv__c]              DECIMAL (21, 12) NULL,
    [gvp__Primary_Conversion__c]        DECIMAL (19, 12) NULL,
    [gvp__Secondary_Conversion__c]      DECIMAL (19, 12) NULL,
    [gvp__Standard_Bottles_Per_Case__c] DECIMAL (18, 0) NULL,
    [gvp__Container_Type__c]            NVARCHAR (255)     NULL,
    [gvp__Custom_1__c]                  NVARCHAR (255)    NULL,
    [gvp__Custom_2__c]                  NVARCHAR (255)    NULL,
    [gvp__Package_Type__c]              NVARCHAR (255)     NULL,
    [gvp__Is_Active__c]                 VARCHAR (255)     NULL
    CONSTRAINT [PK_gvp__Size__c] PRIMARY KEY ([Id])
);

