﻿CREATE TABLE [GVW].[ProductDim](
	[GVWProductSKey] int identity(1,1),
	[ID] [varchar](37) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Granularity] [varchar](15) NULL,
	[URL] [nvarchar](100) NULL,
	[CreatedDate] [char](10) NULL,
	[ModifiedDate] [char](10) NULL,
	[BrandAttachments] [varchar](10) NULL,
	[BrandCustom1] [nvarchar](200) NULL,
	[BrandCustom2] [nvarchar](200) NULL,
	[BrandCustomPicklist1] [nvarchar](200) NULL,
	[BrandCustomPicklist2] [nvarchar](200) NULL,
	[BrandExternalID] [varchar](50) NULL,
	[BrandID] VARCHAR(18) NULL,
	[BrandKeyBrand] [varchar](10) NULL,
	[BrandName] [nvarchar](100) NULL,
	[BrandOwnership] [varchar](30) NULL,
	[BrandSizeID] [varchar](37) NULL,
	[BrandSizeName] [nvarchar](200) NULL,
	[BrandSizeExternalID] [varchar](100) NULL,
	[BrandURL] [nvarchar](100) NULL,
	[BrandVisible] [varchar](10) NULL,
	[Item9LEquivalent] [varchar](20) NULL,
	[ItemABV] [varchar](9) NULL,
	[ItemAttachments] [varchar](10) NULL,
	[ItemAvailable] [varchar](10) NULL,
	[ItemCustom1] [nvarchar](200) NULL,
	[ItemCustom2] [nvarchar](200) NULL,
	[ItemCustom3] [nvarchar](200) NULL,
	[ItemCustom4] [nvarchar](200) NULL,
	[ItemCustom5] [nvarchar](200) NULL,
	[ItemCustom6] [nvarchar](200) NULL,
	[ItemCustom7] [nvarchar](200) NULL,
	[ItemCustomPicklist1] [nvarchar](200) NULL,
	[ItemCustomPicklist2] [nvarchar](200) NULL,
	[ItemCustomCheckbox1] [nvarchar](100) NULL,
	[ItemCustomCheckbox2] [nvarchar](100) NULL,
	[ItemCustomFact1] [nvarchar](200) NULL,
	[ItemCustomFact2] [nvarchar](200) NULL,
	[ItemDescription] [nvarchar](100) NULL,
	[ItemDesignation] [nvarchar](100) NULL,
	[ItemExternalID] varchar(60) NULL,
	[ItemFOBDI]								varchar(20) NULL,
	[ItemFOBWarehouse]				varchar(20) NULL,
	[ItemFullCaseEquivalent] [varchar](20) NULL,
	[ItemID] VARCHAR(18) NULL,
	[ItemKeyItem] [varchar](10) NULL,
	[ItemNABCACode] [varchar](20) NULL,
	[ItemName] [nvarchar](100) NULL,
	[ItemNameNumber]	nvarchar(160) NULL,
	[ItemNumber]	varchar(60) NULL,
	[ItemOrderUnit] [nvarchar](20) NULL,
	[ItemOwnership] [nvarchar](200) NULL,
	[ItemPackage]	nvarchar(100) NULL,
	[ItemPriceSuggestedRetail] varchar(10) NULL,
	[ItemPrimaryEquivalent] varchar(20) NULL,
	[ItemPriceLevel2]				varchar(20) NULL,
	[ItemPriceLevel3]				varchar(20) NULL,
	[ItemPriceLevel4]				varchar(20) NULL,
	[ItemPriceLevel5]				varchar(20) NULL,
	[ItemPriceList]			varchar(20) NULL,
	[ItemQuantity]   varchar(20) NULL,
	[ItemRecordType] varchar(100) NULL,
	[ItemSecondaryEquivalent] varchar(20) NULL,
	[ItemTaxClass]				nvarchar (20) NULL,
	[ItemUnitPrice] [varchar](20) NULL,
	[ItemUnits] [varchar](20) NULL,
	[ItemUOM] [nvarchar](20) NULL,
	[ItemUOMSecondary] [nvarchar](20) NULL,
	[ItemUPCCode] [varchar](30) NULL,
	[ItemURL] [nvarchar](200) NULL,
	[ItemURL2] [nvarchar](200) NULL,
	[ItemVintage]				varchar(40) NULL,
	[ItemVisible] [varchar](10) NULL,
	[ItemProof]								varchar (8) NULL,
	[LabelAppellation] [nvarchar](200) NULL,
	[LabelAttachments] [varchar](10) NULL,
	[LabelBrokenCaseExempt] [varchar](10) NULL,
	[LabelCountry] [nvarchar](50) NULL,
	[LabelCustom1] [nvarchar](200) NULL,
	[LabelCustom2] [nvarchar](200) NULL,
	[LabelCustomCheckbox1] [nvarchar](100) NULL,
	[LabelCustomCheckbox2] [nvarchar](100) NULL,
	[LabelCustomPicklist1] [nvarchar](200) NULL,
	[LabelCustomPicklist2] [nvarchar](200) NULL,
	[LabelExternalID]			NVARCHAR(70) NULL,
	[LabelID] VARCHAR(18) NULL,
	[LabelKeyLabel] [varchar](10) NULL,
	[LabelName]				nvarchar(200) NULL,
	[LabelOwnership] [nvarchar](100) NULL,
	[LabelProductLine] [nvarchar](100) NULL,
	[LabelRegion] [nvarchar](100) NULL,
	[LabelSizeID] [varchar](37) NULL,
	[LabelSizeExternalID] [varchar](100) NULL,
	[LabelSizeName] [nvarchar](300) NULL,
	[LabelSubRegion] [nvarchar](100) NULL,
	[LabelType] [nvarchar](100) NULL,
	[LabelVariety] [nvarchar](255) NULL,
	[LabelVineyard] [nvarchar](200) NULL,
	[LabelVisible] [varchar](10) NULL,
	[LabelURL] [nvarchar](100) NULL,
	[ProductSetID] VARCHAR(18) NULL,
	[ProductSetName]			nvarchar(200) NULL,
	[ProductSetURL] [nvarchar](100) NULL,
	[Size9LEquivalent] [varchar](20) NULL,
	[SizeContainerType] [nvarchar](30) NULL,
	[SizeExternalID] [varchar](30) NULL,
	[SizeID] VARCHAR(18) NULL,
	[SizeLiterVolume]		varchar(40) NULL,
	[SizeMLSort] [varchar](40) NULL,
	[SizeName] [nvarchar](100) NULL,
	[SizePackageType] [nvarchar](20) NULL,
	[SizePrimaryConversion]		varchar(30) NULL,
	[SizeSecondaryConversion] varchar(30) NULL,
	[SizeStandardFCE]					varchar(30) NULL,
	[SizeURL] [nvarchar](100) NULL,
	[SupplierAccountExternalID] [varchar](20) NULL,
	[SupplierCity] [nvarchar](50) NULL,
	[SupplierCountry] [nvarchar](50) NULL,
	[SupplierCustom1] [nvarchar](200) NULL,
	[SupplierCustom2] [nvarchar](200) NULL,
	[SupplierCustom3] [nvarchar](200) NULL,
	[SupplierCustom4] [nvarchar](200) NULL,
	[SupplierCustom5] [nvarchar](200) NULL,
	[SupplierID] VARCHAR(18) NULL,
	[SupplierName] [nvarchar](100) NULL,
	[SupplierState] [nvarchar](25) NULL,
	[SupplierStreet]						nvarchar(250) NULL,
	[SupplierURL] [nvarchar](100) NULL,
	[SupplierZip]							nvarchar(20) NULL,
    GVWCreatedDate      Datetime    default getdate() NOT NULL,
    GVWLastModifiedDate Datetime    default getdate() NOT NULL,
    GVWSourceID  INT default (-1),
    GVWDeleted BIT NULL DEFAULT '0'
	CONSTRAINT [PK_ProductDim] PRIMARY KEY ([GVWProductSKey]), 
    [GVWHash] VARCHAR(32) NULL
);