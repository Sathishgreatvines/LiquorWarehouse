﻿CREATE TABLE [GVW].[InventoryFact] (
	[ID]            VARCHAR (18)   NOT NULL,
    [Name]          VARCHAR (50)   NULL,
    [URL]           NVARCHAR (200) NULL,
    [TransactionTypeID]          VARCHAR (20)   NULL,
    [ProductDimID]               VARCHAR (18)   NULL,
    [TxnDate]                       VARCHAR (10)       NULL,
    [FiscalDate]                    VARCHAR (10)       NULL,
    [FiscalMonth]                 VARCHAR (5)    NULL,
    [FiscalYear]                  VARCHAR (5)    NULL,
    [FiscalDateDimID]             VARCHAR (18)   NULL,
    [CreatedDate]                   VARCHAR (10)       NULL,
    [ModifiedDate]                  VARCHAR (10)       NULL,
    [ItemExternalID]           VARCHAR (50)   NULL,
    [Location]           VARCHAR (50)   NULL,
    [Warehouse]          VARCHAR (50)   NULL,
    [Quantity]             DECIMAL(14, 6)   NULL,
    [QuantityOnHand]     VARCHAR (20)   NULL,
    [QuantityOnOrder]    VARCHAR (20)   NULL,
    [9LCases]             DECIMAL(14, 6)  NULL,
    [PrimaryVolume]       DECIMAL(14, 6)  NULL,
    [SecondaryVolume]     DECIMAL(14, 6)  NULL,
    [FullCaseEquivalent] DECIMAL(14, 6)  NULL,
    [TxnDateID]                    VARCHAR (20)   NULL,
    [FiscalDateID]                 VARCHAR (20)   NULL, 
    GVWCreatedDate       datetime    default getdate() NOT NULL,
    GVWLastModifiedDate  datetime    default getdate() NOT NULL,
    GVWSourceID  INT default (-1),
    GVWDeleted BIT NULL DEFAULT '0',
	[GVWHash] VARCHAR(32) NOT NULL DEFAULT 0, 
	CONSTRAINT [PK_InventoryFact] PRIMARY KEY ([ID])
);