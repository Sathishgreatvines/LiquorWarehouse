﻿CREATE TABLE [GVW].[ContactDim](
  GVWContactSKey  int     identity(1,1),
	[ID] [varchar](50) NOT NULL,
	[Granularity] [varchar](50) NULL,
	[URL] [varchar](100) NULL,
	[CreatedDate] [varchar](50) NULL,
	[ModifiedDate] [varchar](50) NULL,
	[CustomerExternalID] [varchar](50) NULL,
	[SalesmanExternalID] [varchar](50) NULL,
	[EmailExternalID] [varchar](50) NULL,
	[FullName] [varchar](150) NULL,
	[LastName] [varchar](75) NULL,
	[FirstName] [varchar](75) NULL,
	[Salutation] [varchar](50) NULL,
	[RecordType] [varchar](50) NULL,
	[Street] NVARCHAR(300) NULL,
	[City] [varchar](100) NULL,
	[State] [varchar](50) NULL,
	[Zip] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Fax] [varchar](50) NULL,
	[MobilePhone] [varchar](50) NULL,
	[HomePhone] [varchar](50) NULL,
	[WorkPhone] [varchar](50) NULL,
	[OtherPhone] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
	[WorkEmail] [varchar](100) NULL,
	[Title] [varchar](125) NULL,
	[Department] [varchar](100) NULL,
	[ActiveIndicator] [varchar](50) NULL,
	[DoNotEmail] [varchar](50) NULL,
	[DoNotCall] [varchar](50) NULL,
	[Level] [varchar](50) NULL,
	[SourceFile] [varchar](50) NULL,
	[ManagerID] [varchar](50) NULL,
	[ManagerURL] [varchar](100) NULL,
	[ManagerLastName] [varchar](50) NULL,
	[ManagerFirstName] [varchar](50) NULL,
	[ManagerFullName] [varchar](50) NULL,
	[ManagerEmail] [varchar](100) NULL,
	[OwnerID] [varchar](50) NULL,
	[OwnerURL] [varchar](100) NULL,
	[OwnerLastName] [varchar](50) NULL,
	[OwnerFirstName] [varchar](50) NULL,
	[OwnerFullName] [varchar](50) NULL,
	[OwnerEmail] [varchar](100) NULL,
	[AccountID] [varchar](50) NULL,
	[Role] [varchar](200) NULL,
	[Custom1] [varchar](200) NULL,
	[Custom2] [varchar](200) NULL,
	[Custom3] [varchar](200) NULL,
	[Custom4] [varchar](200) NULL,
	[Custom5] [varchar](200) NULL,
	[Zip5] [varchar](50) NULL, 
  GVWCreatedDate  datetime default getdate() NOT NULL,
  GVWLastModifiedDate datetime default getdate() NOT NULL,
  GVWSourceID   int   default (0) NOT NULL,
  GVWDeleted    bit   default 0 NOT NULL,
    [GVWHash] VARCHAR(32) NOT NULL DEFAULT 0, 
    CONSTRAINT [PK_ContactDim] PRIMARY KEY ([GVWContactSKey])
) ON [PRIMARY]
GO