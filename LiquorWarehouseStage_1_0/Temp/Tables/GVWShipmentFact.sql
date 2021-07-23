CREATE TABLE [Temp].[GVWShipmentFact](
	[ID] [varchar](20) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[URL] [nvarchar](200) NULL,
	[Type] [varchar](6) NULL,
	[CreatedDate] [nvarchar](10) NULL,
	[ModifiedDate] [nvarchar](10) NULL,
	[ProductDimID] [varchar](18) NOT NULL,
	[GeographyDimID] [varchar](18) NULL,
	[TransactionTypeID] [varchar](5) NULL,
	[TxnDate] [nvarchar](10) NOT NULL,
	[FiscalDate] [nvarchar](10) NULL,
	[FiscalYear] [varchar](6) NULL,
	[FiscalMonth] [varchar](4) NULL,
	[TxnAltDate] [nvarchar](10) NULL,
	[ExternalID] [varchar](255) NULL,
	[OrderType] [nvarchar](100) NULL,
	[Status] [nvarchar](100) NULL,
	[PhysicalCases] [decimal](11, 3) NULL,
	[9LCases] [decimal](14, 6) NULL,
	[FullCaseEquivalent] [decimal](14, 6) NULL,
	[PrimaryVolume] [decimal](14, 6) NULL,
	[SecondaryVolume] [decimal](14, 6) NULL,
	[ExtendedPrice1] [money] NULL,
	[ExtendedPrice2] [money] NULL,
	[Custom1] [nvarchar](200) NULL,
	[Custom2] [nvarchar](200) NULL,
	[Fact1] [decimal](15, 8) NULL,
	[Fact2] [decimal](15, 8) NULL,
	[AccountDimID] [varchar](18) NOT NULL,
	[RptCurrentInd] [varchar](3) NULL,
	[FiscalDateDimID] [nvarchar](10) NULL,
	[CurrencyDimID] [varchar](18) NULL,
	[SourceSystem] [varchar](60) NULL,
	[OrderNumber] [varchar](30) NOT NULL,
	[InvoiceNumber] [varchar](50) NULL,
	[StartDate] [nvarchar](10) NULL,
	[EndDate] [nvarchar](10) NULL,
	[TxnDateID] [varchar](50) NULL,
	[FiscalDateID] [varchar](50) NULL,
	[TxnAltDateID] [varchar](50) NULL,
	[StartDateID] [varchar](50) NULL,
	[EndDateID] [varchar](50) NULL,
	[GVWCreatedDate] [datetime] NOT NULL,
	[GVWLastModifiedDate] [datetime] NOT NULL,
	[GVWSourceID] [int] NULL,
	[GVWDeleted] [bit] NULL,
	[GVWHash] [varchar](32) NOT NULL,
 CONSTRAINT [PK_GVWShipmentFact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[TxnDate] ASC,
	[OrderNumber] ASC,
	[AccountDimID] ASC,
	[ProductDimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [Temp].[GVWShipmentFact] ADD  DEFAULT (getdate()) FOR [GVWCreatedDate]
GO

ALTER TABLE [Temp].[GVWShipmentFact] ADD  DEFAULT (getdate()) FOR [GVWLastModifiedDate]
GO

ALTER TABLE [Temp].[GVWShipmentFact] ADD  DEFAULT ((-1)) FOR [GVWSourceID]
GO

ALTER TABLE [Temp].[GVWShipmentFact] ADD  DEFAULT ('0') FOR [GVWDeleted]
GO

ALTER TABLE [Temp].[GVWShipmentFact] ADD  DEFAULT ((0)) FOR [GVWHash]
GO
