﻿CREATE TABLE [Temp].[GVWAccountCallFact](
    [ID]           VARCHAR(18)      NOT NULL,
	[URL]          [varchar](250)  NULL,
	[Name]         [varchar](250)  NULL,
	[AccountDimID]                 VARCHAR(18)      NOT NULL DEFAULT '-1',
	[AccountTeamDimID]            VARCHAR(18)   NULL DEFAULT '-1',
    [ActivityOwnerByAccountID]            VARCHAR (36)   NOT NULL,
	[CallDuration] VARCHAR(50) NULL, 
	[ContactDimID]                 VARCHAR(18)      NULL DEFAULT '-1',
	[CreatedDate]                   [char](10)      NULL,
	[CreateDateID]                 [varchar](10)   NULL,
	[Custom1]          [varchar](255)  NULL,
	[Custom2]          [varchar](255)  NULL,
	[Custom3]          [varchar](255)  NULL,
	[Custom4]          [varchar](255)  NULL,
    [Custom5]          [varchar](255)  NULL,
	[CustomCheckbox1] [varchar](200)  NULL,
	[CustomCheckbox2] [varchar](200)  NULL,
	[CustomCheckbox3] [varchar](200)  NULL,
	[CustomFact1]     [varchar](20)   NULL,
	[CustomFact2]     [varchar](20)   NULL,
	[Description]       [nvarchar](3000) NULL,
	[Distance]          [varchar](50)   NULL,
	[ExternalID]               [varchar](200)  NULL,
	[EndDateID]                 [varchar](10)   NULL,
    [EndDate] DATE NULL, 
    [EndTime] TIME NULL, 
	[FiscalDateID]                 [varchar](10)   NULL,
	[FiscalDate]                    [char](10)      NULL,
	[FiscalMonth]                   [char](2)       NULL,
	[FiscalYear]                    [char](4)       NULL,
	[Geocode]           [varchar](100)  NULL,
	[GeographyDimID]               VARCHAR(18)      NULL DEFAULT '-1',
	[ImageID]                       VARCHAR(18)   NULL,
	[ImageName]                     [varchar](200)  NULL,
	[ImageURL]                      [varchar](250)  NULL,
	[ImageInd]                      [varchar](10)   NULL,
	[ImageDescription]              [varchar](300)  NULL,
	[ImageURLDashboard]            [varchar](250)  NULL,
	[ImageURLTable]                [varchar](200)  NULL,
	[LocalDate]        [char]   (10)   NULL,
	[Longitude]         [varchar](100)  NULL,
	[Latitude]          [varchar](100)  NULL,
	[ModifiedDate]                  [char](10)      NULL,
	[Notes]             [nvarchar](300) NULL,
	[PersonDimID]                  VARCHAR(18)      NULL DEFAULT '-1',
	[Priority]          [varchar](100)  NULL,
	[ProductDimID]                 VARCHAR(18)      NULL DEFAULT '-1',
	[SalesDivisionDimID]          VARCHAR(18)   NULL DEFAULT '-1',
	[SpendDimID]                   VARCHAR(18)      NULL DEFAULT '-1', 
	[StartDate] DATE NULL, 
	[StartDateID]                 [varchar](10)   NULL,
    [StartTime] TIME NULL, 
	[Status]            [varchar](50)   NULL,
	[Subject]           [varchar](100)  NULL,
	[TaskID]                        VARCHAR(18)   NULL,
	[TaskURL]                       [varchar](250)  NULL,
	[TaskStatus]                    [varchar](50)   NULL,
	[TaskType]                      [varchar](50)   NULL,
	[TaskCallType]                 [varchar](200)  NULL,
	[TransactionTypeID]            VARCHAR(18)      NULL DEFAULT '-1',
	[TxnAltDateID]                [varchar](10)   NULL,
	[TxnAltDate]                   [char](10)      NULL,
	[TxnDateID]                    [varchar](10)   NULL,
	[TxnDate]                       [char](10)      NULL,
	[Type]              [varchar](200)  NULL,
    [AccountCallSequenceStatusID] VARCHAR(18) NULL DEFAULT '-1', 
    GVWCreatedDate       datetime    default getdate() NOT NULL,
    GVWLastModifiedDate  datetime    default getdate() NOT NULL,
    GVWSourceID  INT default (-1),
    GVWDeleted BIT NULL DEFAULT '0',
	[GVWHash] VARCHAR(32) NOT NULL DEFAULT 0, 
    CONSTRAINT [PK_GVWAccountCallFact] PRIMARY KEY ([AccountDimID], [ID])
);