﻿CREATE TABLE [GVW].[ActivityFact] (
    [ID]            VARCHAR (20)   NOT NULL,
    [URL]                NVARCHAR (200) NULL,
    [AccountDimID]              VARCHAR (30)   NULL DEFAULT '-1',
    [AccountTeamDimID]         VARCHAR (20)   NULL DEFAULT '-1',
    [AccountCallName]               VARCHAR (100)  NULL,
    [AccountCallStatus]             VARCHAR (800)  NULL,
    [AccountCallID]            VARCHAR (20)   NOT NULL,
    [ActivityOwnerByAccountID]            VARCHAR (36)   NOT NULL,
    [ActivityName]               NVARCHAR (100)  NULL,
    [ActivityStatus]             VARCHAR (800)  NULL,
    [ActivityURL]                NVARCHAR (200) NULL,
    [AuthorizationNew]           VARCHAR (500)  NULL,
    [AuthorizationMandated]      VARCHAR (60)   NULL,
    [AuthorizationSupported]     VARCHAR (50)   NULL,
    [BTGListing]                 VARCHAR (700)  NULL,
    [Compliance]         VARCHAR (50)   NULL,
    [ContactDimID]              VARCHAR (20)   NULL DEFAULT '-1',
    [ContactedName]     NVARCHAR (100)   NULL,
    [ContactedEmail]    NVARCHAR (100)  NULL,
    [ContactedTitle]    NVARCHAR (100)   NULL,
    [CreatedDate]                  CHAR(10)       NULL,
    [CreateDate]                   DATE       NULL,
    [CreateDateID]                VARCHAR (20)   NULL,
    [CurrencyDimID]             VARCHAR (18)   NULL,
    [Current]            VARCHAR (10)   NULL,
    [Custom1]           NVARCHAR (300) NULL,
    [Custom2]           NVARCHAR (300) NULL,
    [Custom3]           NVARCHAR (300) NULL,
    [Custom4]           NVARCHAR (300) NULL,
    [Custom5]           NVARCHAR (300) NULL,
    [Custom6]           NVARCHAR (300) NULL,
    [Custom7]           NVARCHAR (300) NULL,
    [Custom8]           NVARCHAR (300) NULL,
    [Custom9]           NVARCHAR (300) NULL,
    [Custom10]           NVARCHAR (300) NULL,
    [CustomCheckbox1]  VARCHAR (20)   NULL,
    [CustomCheckbox2]  VARCHAR (20)   NULL,
    [CustomCurrency1]    NVARCHAR (30)  NULL,
    [CustomCurrency2]    NVARCHAR (30)  NULL,
    [CustomFact1]               VARCHAR (500)  NULL,
    [CustomFact2]               VARCHAR (500)  NULL,
    [CustomPicklist1]  NVARCHAR (200) NULL,
    [CustomPicklist2]  NVARCHAR (200) NULL,
    [CustomPicklist3]  VARCHAR (200)  NULL,
    [CustomPicklist4]  NVARCHAR (200) NULL,
    [Description]        NVARCHAR(500)  NULL,
    [DisplayLocation]            VARCHAR (700)  NULL,
    [Distance]             VARCHAR (30)   NULL,
    [EndDateID]                   VARCHAR (20)   NULL,
    [EndDate]                      DATE       NULL,
    [EventBrandPromoted]        VARCHAR (700)  NULL,
    [EventERFReceived]          VARCHAR (100)  NULL,
    [EventFeaturedDrink]        VARCHAR (500)  NULL,
    [ExternalID]                VARCHAR (70)   NULL,
	[FactType]				VARCHAR (10) NULL,
    [FiscalDate]                   DATE       NULL,
    [FiscalYear]                 VARCHAR (10)   NULL,
    [FiscalMonth]                VARCHAR (4)    NULL,
    [FiscalDateDimID]            VARCHAR(10)       NULL,
    [FiscalDateID]                VARCHAR (20)   NULL,
    [Geocode]            VARCHAR (30)   NULL,
    [GeographyDimID]            VARCHAR (20)   NULL DEFAULT '-1',
    [Group]              VARCHAR (100)  NULL,
    [ImageDescription]           VARCHAR (100)  NULL,
    [ImageID]                    VARCHAR (40)   NULL,
    [ImageInd]                   VARCHAR (20)   NULL,
    [ImageName]                  VARCHAR (255)  NULL,
    [ImageURL]                   NVARCHAR (200) NULL,
    [ImageURLDashboard]         VARCHAR (200)  NULL,
    [ImageURLTable]             VARCHAR (200)   NULL,
    [IncentiveResults]           VARCHAR (700)  NULL,
    [Latitude]             NVARCHAR (40)  NULL,
    [Longitude]            NVARCHAR (40)  NULL,
    [MenuDrinkName]             VARCHAR (255)  NULL,
    [ModifiedDate]                 CHAR(10)       NULL,
    [Notes]              NVARCHAR(255)  NULL,
    [ObjectiveResults]           VARCHAR (300)  NULL,
    [OrderCommitBottles]          VARCHAR (20)   NULL,
    [PackageType]                VARCHAR (50)   NULL,
    [PersonDimID]               VARCHAR (20)   NULL DEFAULT '-1',
    [PhysicalCases]       VARCHAR (50)   NULL,
    [PlacementNumber]            VARCHAR (40)   NULL,
    [PlacementType]              VARCHAR (30)   NULL,
    [POSApproved]                VARCHAR (20)   NULL,
    [POSItemName]               VARCHAR (100)   NULL,
    [POSQuantity]                  VARCHAR (50)   NULL,
    [PresentationAction]         VARCHAR (50)   NULL,
    [PresentationProposedUsage] NVARCHAR (100)  NULL,
    [PresentationReaction]       NVARCHAR (50)  NULL,
    [PresentationTasted]         NVARCHAR (50)  NULL,
    [Price]                NVARCHAR (50)  NULL,
    [ProductDimID]              VARCHAR (20)   NULL DEFAULT '-1',
    [ProgramName]                VARCHAR (100)   NULL,
    [ProgramRecordType]         VARCHAR (20)   NULL,
    [SalesDivisionDimID]       VARCHAR (30)   NULL DEFAULT '-1',
    [ScanAdvertised]             VARCHAR (50)   NULL,
    [ScanAmount]                   VARCHAR (20)   NULL,
    [ScanDisplay]                VARCHAR (50)   NULL,
    [SpendDimID]                VARCHAR (40)   NULL DEFAULT '-1', 
    [StaffTrainingPOS]          VARCHAR (255)   NULL,
    [StaffTrainingTasted]       VARCHAR (50)   NULL,
    [StaffTrainingTrained]        VARCHAR (50)   NULL,
    [StartDateID]                 VARCHAR (20)   NULL,
    [StartDate]                    DATE       NULL,
    [Subtype]            VARCHAR (300)  NULL,
    [TaskAccountCall]           VARCHAR (20)   NULL,
    [TaskCallType]              NVARCHAR(200)   NULL,
    [TaskPriority]               VARCHAR (50)   NULL,
    [TaskSubject]                NVARCHAR (250)  NULL,
    [Type]               VARCHAR (50)   NULL,
    [TransactionType]            VARCHAR (20)   NULL,
    [TxnDateID]                   VARCHAR (20)   NULL,
    [TxnDate]              DATE       NULL,
	[AccountCallSequenceStatusID] VARCHAR(18) NULL DEFAULT '-1', 
    GVWCreatedDate       datetime    default getdate() NOT NULL,
    GVWLastModifiedDate  datetime    default getdate() NOT NULL,
    GVWSourceID  INT default (-1),
    GVWDeleted BIT NULL DEFAULT '0',
	[GVWHash] VARCHAR(32) NOT NULL DEFAULT 0, 
    CONSTRAINT [PK_ActivityFact] PRIMARY KEY ([ID])
);

