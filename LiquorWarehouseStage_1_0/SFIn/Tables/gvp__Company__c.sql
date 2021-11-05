CREATE TABLE [SFIn].[gvp__Company__c] (
    [Id]                  char (18)  NOT NULL,
    [OwnerId]             char (18) NULL,
    [IsDeleted]           VARCHAR (10) NULL,
    [Name]                NVARCHAR (100) NULL,
    [CreatedDate]         datetime NULL,
    [CreatedById]         char(18) NULL,
    [LastModifiedDate]    datetime NULL,
    [LastModifiedById]    char(18)  NULL,
    [SystemModstamp]      DATETIME NULL,
    [LastViewedDate]      DATETIME NULL,
    [LastReferencedDate]  DATETIME NULL,
    [gvp__Company_Key__c] NVARCHAR (255) NULL,
    [gvp__Custom_1__c]    NVARCHAR (255) NULL,
    [gvp__Custom_2__c]    NVARCHAR (255) NULL,
    [gvp__Is_Active__c]   VARCHAR (255) NULL, 
    CONSTRAINT [PK_gvp__Company__c] PRIMARY KEY ([Id])
);

