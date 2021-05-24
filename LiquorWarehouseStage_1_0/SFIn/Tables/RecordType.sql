CREATE TABLE [SFIn].[RecordType] (
    [ID]                CHAR (18)  NOT NULL,
    [Name]              NVARCHAR (200) NOT NULL,
    [DeveloperName]     VARCHAR (200) NOT NULL,
    [NamespacePrefix]   VARCHAR (100) NULL,
    [Description]       NVARCHAR (255) NULL,
    [BusinessProcessID] CHAR (18) NULL,
    [SobjectType]       VARCHAR (255) NOT NULL,
    [IsActive]          VARCHAR (10) NOT NULL,
    [CreatedByID]       CHAR (18) NOT NULL,
    [CreatedDate]       DATETIME  NOT NULL,
    [LastModifiedByID]  CHAR (18) NOT NULL,
    [LastModifiedDate]  DATETIME NOT NULL,
    [SystemModstamp]    DATETIME NOT NULL, 
    CONSTRAINT [PK_RecordType] PRIMARY KEY ([ID])
);

