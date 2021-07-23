CREATE TABLE [SFOut].[gvp__BevPath_Connection__c] (
    [Id]                            CHAR (18)     NOT NULL,
    [IsDeleted]                      VARCHAR (10)  NOT NULL,
    [Name]                          VARCHAR (80)  NULL,
    [CreatedDate]                   VARCHAR (255) NULL,
    [LastModifiedDate]              VARCHAR (255) NULL,
    [SystemModstamp]                VARCHAR (255) NULL,
    [LastViewedDate]                VARCHAR (255) NULL,
    [LastReferencedDate]            VARCHAR (255) NULL,
    [CreatedById]                 VARCHAR (18)  NULL,
    [LastModifiedById]           VARCHAR (18)  NULL,
    [OwnerId]                      VARCHAR (18)  NULL,
    [gvp__Account_Identifier__c]    VARCHAR (255) NULL,
    [gvp__BevPath_Connection_ID__c] VARCHAR (255) NULL,
    [gvp__BevPath_Org_Id__c]        VARCHAR (255) NULL,
    [gvp__Secret__c]                VARCHAR (255) NULL,
    [gvp__Use_Account_Keys__c]      VARCHAR (70)  NULL
);
GO

