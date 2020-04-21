﻿CREATE TABLE [GVW].[EventFact] (
    [ID]           VARCHAR(18)   NOT NULL DEFAULT '-1',
    [URL]          NVARCHAR (250)  NULL,
    [CreatedDate]            CHAR     (10)   NULL,
    [ModifiedDate]           CHAR     (10)   NULL,
    [TxnDate]                CHAR     (10)   NULL,
    [TxnAltDate]            CHAR     (10)   NULL,
    [FiscalDate]             CHAR     (10)   NULL,
    [FiscalMonth]            VARCHAR  (4)    NULL,
    [FiscalYear]             VARCHAR  (6)    NULL,
    [FiscalDateDimID]      VARCHAR  (18)   NULL,
    [AccountDimID]          VARCHAR(18)   NULL DEFAULT '-1',
    [ContactDimID]          VARCHAR(18)   NULL DEFAULT '-1',
    [PersonDimID]           CHAR     (18)   NULL DEFAULT '-1',
    [GeographyDimID]        VARCHAR(18)   NULL DEFAULT '-1',
    [ProductDimID]          VARCHAR(18)   NULL DEFAULT '-1',
    [TransactionTypeID]     CHAR     (18)   NULL DEFAULT 'EVT',
    [Subject]           VARCHAR  (255)  NULL,
    [Location]          VARCHAR  (255)  NULL,
    [IsAllDay]        VARCHAR  (6)    NULL,
    [DurationMin]      VARCHAR  (10)   NULL,
    [Date]              CHAR     (10)   NULL,
    [StartTime]        VARCHAR  (12)   NULL,
    [EndTime]          VARCHAR  (12)   NULL,
    [Description]       NVARCHAR (2000) NULL,
    [Type]              NVARCHAR (200)  NULL,
    [IsPrivate]        VARCHAR  (10)   NULL,
    [ShowAs]           VARCHAR  (20)   NULL,
    [IsGroup]          VARCHAR  (20)   NULL,
    [GroupType]        VARCHAR  (10)   NULL,
    [IsRecurrence]     VARCHAR  (10)   NULL,
    [RecurrenceType]   VARCHAR  (30)   NULL,
    [IsPast]           VARCHAR  (30)   NULL,
    [ExternalId]               VARCHAR  (70)   NULL,
    [Approved]          VARCHAR  (10)   NULL,
    [RptCurrentInd]   VARCHAR  (10)   NULL,
    [RptFromDate]     CHAR     (10)   NULL,
    [TxnDateID]             VARCHAR     (8)    NULL,
    [TxnAltDateID]         VARCHAR     (8)    NULL,
    [CreateDateID]          VARCHAR     (8)    NULL,
    [FiscalDateID]          VARCHAR     (8)    NULL,
    [RptFromDateID]        VARCHAR     (8)    NULL, 
    GVWCreatedDate       datetime    default getdate() NOT NULL,
    GVWLastModifiedDate  datetime    default getdate() NOT NULL,
    GVWSourceID  INT default (-1),
    GVWDeleted BIT NULL DEFAULT '0'
	CONSTRAINT [PK_EventFact] PRIMARY KEY ([ID]), 
    [GVWHash] VARCHAR(32) NOT NULL DEFAULT 0
);
