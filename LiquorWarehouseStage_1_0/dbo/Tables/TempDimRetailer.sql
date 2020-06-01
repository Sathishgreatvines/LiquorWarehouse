﻿CREATE TABLE [dbo].[TempDimRetailer] (
    [LWRetailerSKey]          INT              IDENTITY (1, 1) NOT NULL,
    [RetailerID]              char (18)        NOT NULL DEFAULT '-1',
    [RetailerLN]              NVARCHAR(200)    NOT NULL DEFAULT 'No Data',
    [RetailerDBA]             NVARCHAR(100)    NULL,
    KeyAccountChain1          CHAR(18)         null,
    KeyAccountChain2          CHAR(18)         null,
    LWKeyAccountChainFlag     int              not null default 0,
    [SalesRep]                NVARCHAR(100)    null ,
    [LWBannerNameSKey]              INT   NOT NULL DEFAULT -1,
    [BDNID]                   VARCHAR (50)     NULL,
    [SRSID]                   VARCHAR (50)     NULL,
    [ERPID]                   VARCHAR (50)     NULL,
    [ERP2ID]                  VARCHAR (50)     NULL,
    [TDLinxID]                VARCHAR (50)     NULL,
    [LWRetailerURL]           NVARCHAR(200)    NOT NULL DEFAULT 'No Data',
    [LWPremiseTypeSKey]       INT              NOT NULL DEFAULT -1,
    [LWRetailerOwnerSKey]     INT              NOT NULL DEFAULT -1,
    [LWRetailerHQSKey]        INT              NOT NULL DEFAULT -1,
    [BillingStreet]           NVARCHAR (250)   NULL,
    [BillingCity]             NVARCHAR(50)     NULL,
    [BillingPostalCode]       NVARCHAR(10)     NULL,
    [ShippingStreet]          NVARCHAR (250)   NULL,
    [ShippingCity]            NVARCHAR(50)     NULL,
    [ShippingPostalCode]      NVARCHAR(10)     NULL,
    [SegmentKey]              VARCHAR (50)     NULL,
    [SegmentChannel]          VARCHAR (50)     NULL,
    [LWWineFlag]              INT              NOT NULL DEFAULT -1,
    [LWLiquorFlag]            INT              NOT NULL DEFAULT -1,
    [LWBeerFlag]              INT              NOT NULL DEFAULT -1,
    [LWFranchiseFlag]         INT              NOT NULL DEFAULT -1,
    [FoodType]                VARCHAR(100)     NULL,
    [LWTradeChannelSKey]      INT              NOT NULL DEFAULT -1,
    [ActiveStatus]            VARCHAR(25)      NULL ,
    [LWRetailerStatusSKey]    INT              NULL,
    [LWMarketingGroupSKey]    INT              NULL,
    [LicenseType]             VARCHAR (100)    NULL,
    [CustomerPriority]        NVARCHAR(100)    NULL,
    [RetailerAccountFormat]   VARCHAR (200)    NULL,
    [LWRetailerTypeSKey]      INT              NULL,
    [RetailerCustomCheckbox1] INT              NULL,
    [RetailerCustomCheckbox2] INT              NULL,
    [CreditAvailable]         MONEY            NULL,
    [CreditLimit]             MONEY            NULL,
    [CreditStatus]            NVARCHAR(100)    NULL,
    [LicenseExpiration]       DATE             NULL,
    [LWMSASKey]               VARCHAR (20)     NULL,
    [DeliveryTime]            NVARCHAR(70)     NULL,
    [SourceFile]              VARCHAR (100)    NULL,
    [Warehouse]               NVARCHAR (100)   NULL,
    [Latitude]                DECIMAL (14, 11) NULL,
    [Longitude]               DECIMAL (14, 11) NULL,
    [GeocodePrecision]        NVARCHAR (20)    NULL,
    [LWDecisionMakerSKey]     INT              NOT NULL DEFAULT -1,
    [KPISegment]              char (18)        NULL,
    [RetailerRank]            INT              NULL,
    [ConsumerDemographic]     NVARCHAR (200)   NULL,
    [PrimaryContact]          NVARCHAR (100)   NULL,
    [PrimaryContactEmail]     NVARCHAR (100)   NULL,
    [CompanySize]             NVARCHAR (100)   NULL,
    [LicenseNumber]           VARCHAR (20)     NULL,
    [NumberOfLocations]       INT              NULL,
    [FamilyOwnerCode]         VARCHAR (20)     NULL,
    [FIPSStateCode]           CHAR(2)          NULL,
    [FIPSCountyCode]          CHAR(5)          NULL,
    [OutletNumber]            VARCHAR (20)     NULL,
    [OutletPlaceName]         NVARCHAR (100)   NULL,
    [NumberOfFTE]             DECIMAL (5, 2)   NULL,
    [NumberOfRegisters]       INT              NULL,
    [SquareFootage]           DECIMAL (8, 2)   NULL,
    [AnnualVolume]            NVARCHAR(200)    NULL,
    [WeeklyVolume]            DECIMAL (7, 2)   NULL,
    [OwnerStateFIPSCode]      VARCHAR(10)      NULL,
    [OwnerCountyFIPSCode]     VARCHAR(10)      NULL,
    [OwnerState]              VARCHAR(25)      NULL,
    [RetailerCustom1]         NVARCHAR (255)   NULL,
    [RetailerCustom2]         NVARCHAR (255)   NULL,
    [RetailerCustom3]         NVARCHAR (255)   NULL,
    [RetailerCustom4]         NVARCHAR (255)   NULL,
    [RetailerCustom5]         NVARCHAR (255)   NULL,
    [RetailerCustom6]         NVARCHAR (255)   NULL,
    [RetailerCustom7]         NVARCHAR (255)   NULL,
    [RetailerCustom8]         NVARCHAR (255)   NULL,
    [RetailerCustom9]         NVARCHAR (255)   NULL,
    [RetailerCustom10]        NVARCHAR (255)   NULL,
    [RetailerCustomDate1]     DATE             NULL,
    [RetailerCustomDate2]     DATE             NULL,
    [BDNDateofData]           CHAR(6)          NULL,
    [BDNLastUpdate]           DATE             NULL,
    [BDNAddDate]              DATE             NULL,
    [BDNChangeDate]           DATE             NULL,
    [LWExistsInSFFlag]        INT              NOT NULL DEFAULT -1,
    [LWSourceID]              INT              NOT NULL DEFAULT -1,
    [SourceCreateDate]        DATETIME             NOT NULL DEFAULT '1/1/1900',
    [SourceModifiedDate]      DATETIME             NOT NULL DEFAULT '1/1/1900',
    [LWRowHash]               BINARY(16)       NOT NULL,
    CONSTRAINT [PK_LWRetailerSKey] PRIMARY KEY CLUSTERED ([LWRetailerSKey] ASC)
);