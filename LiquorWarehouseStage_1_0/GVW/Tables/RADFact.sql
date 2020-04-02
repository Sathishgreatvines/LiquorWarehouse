﻿CREATE TABLE [GVW].[RADFact](
	[ID] VARCHAR(18),
	[Name] [varchar](300) NULL,
	[URL] [nvarchar](200) NULL,
	[Type] [varchar](8) NULL,
	[CreatedDate] CHAR(10) NULL,
	[ModifiedDate] CHAR(10) NULL,
	[AccountDimID] VARCHAR(18) NULL,
	[ProductDimID] VARCHAR(18) NULL,
	[GeographyDimID] VARCHAR(18) NULL,
	[TransactionTypeID] [varchar](5) NULL,
	[TxnDate] [date] NULL,
	[FiscalDate] [date] NULL,
	[FiscalYear] [varchar](6) NULL,
	[FiscalMonth] [varchar](5) NULL,
	[TxnAltDate] [date] NULL,
	[ExternalID] [varchar](255) NULL,
	[SourceFile] [varchar](50) NULL,
	[PODExternalID] [varchar](100) NULL,
	[PhysicalCases] DECIMAL(14, 4) NULL,
	[9LCases] DECIMAL(14, 6) NULL,
	[FullCaseEquivalent] DECIMAL(14, 6) NULL,
	[PrimaryVolume] DECIMAL(14, 6) NULL,
	[SecondaryVolume] DECIMAL(14, 6) NULL,
	[ExtendedPrice1] MONEY NULL,
	[Custom1] NVARCHAR(255) NULL,
	[Custom2] NVARCHAR(255) NULL,
	[Fact1] DECIMAL(14, 4) NULL,
	[Fact2] DECIMAL(14, 4) NULL,
	[PersonDimID] [varchar](20) NULL,
	[RptCurrentInd] [varchar](3) NULL,
	[FiscalDateDimID] VARCHAR(10) NULL,
	[SalesRepDimID] VARCHAR(18) NULL,
	[CurrencyDimID] [varchar](5) NULL,
	[InvoiceNumber] [varchar](20) NULL,
	[OutletExternalID] NVARCHAR(255) NULL,
	[DistItemNumber] [varchar](30) NULL,
	[SalesRepCode] NVARCHAR(255) NULL,
	[SalesRepName] NVARCHAR(255) NULL,
	[BottleDepositAmount] MONEY NULL,
	[TaxAmount] MONEY NULL,
	[AddlChargesAmount] MONEY NULL,
	[ExtendedPrice2] MONEY NULL,
	[PODBrandExternalID] [varchar](100) NULL,
	[PODLabelExternalID] [varchar](100) NULL,
	[PODItemExternalID] [varchar](100) NULL,
	[RptFromDate]Date NULL,
	[SourceSystem] NVARCHAR(255) NULL,
	[ContactDimID] VARCHAR(18) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[AccountTeamDimID] VARCHAR(18) NULL,
	[SalesDivisionDimID] VARCHAR(18) NULL,
	[TxnDateID] [int] NULL,
	[FiscalDateID] [int] NULL,
	[TxnAltDateID] [int] NULL,
	[StartDateID] [int] NULL,
	[EndDateID] [int] NULL,
	[RptFromDateID] [int] NULL,
	[AltStartDate] [date] NULL,
	[AltEndDate] [date] NULL,
	[AltStartDateID] [int] NULL,
	[AltEndDateID] [int] NULL,
    GVWCreatedDate       datetime    default getdate() NOT NULL,
    GVWLastModifiedDate  datetime    default getdate() NOT NULL,
    GVWSourceID  INT default (-1),
    GVWDeleted BIT NULL DEFAULT '0'
	CONSTRAINT [PK_RADFact] PRIMARY KEY ([ID])
);