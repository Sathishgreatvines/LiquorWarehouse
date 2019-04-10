﻿CREATE TABLE [GDOut].[GD_Account_Owner_Dim](
	[Person Dim Id] [varchar](18) NOT NULL,
	[Person Dim Name] [varchar](200) NULL,
	[Person Dim Granularity] [varchar](10) NULL,
	[Person Dim URL] [varchar](200) NULL,
	[Created Date] [datetime] NULL,
	[Modified Date] [datetime] NULL,
	[Person Id] [varchar](18) NULL,
	[Person URL] [varchar](200) NULL,
	[Person Key 1] [varchar](100) NULL,
	[Person Key 2] [varchar](100) NULL,
	[Person Email Key] [varchar](100) NULL,
	[Person Full Name] [varchar](100) NULL,
	[Person Last Name] [varchar](50) NULL,
	[Person First Name] [varchar](50) NULL,
	[Person Salutation] [varchar](50) NULL,
	[Person Record Type] [varchar](16) NULL,
	[Person Street] [varchar](100) NULL,
	[Person City] [varchar](100) NULL,
	[Person State] [varchar](20) NULL,
	[Person Zip] [nvarchar](10) NULL,
	[Person Country] [varchar](25) NULL,
	[Person Phone] [varchar](20) NULL,
	[Person Fax] [varchar](max) NULL,
	[Person Mobile Phone] [varchar](20) NULL,
	[Person Home Phone] [varchar](20) NULL,
	[Person Work Phone] [varchar](20) NULL,
	[Person Other Phone] [varchar](20) NULL,
	[Person Email] [varchar](100) NULL,
	[Person Work Email] [varchar](100) NULL,
	[Person Title] [varchar](100) NULL,
	[Person Company] [varchar](150) NULL,
	[Person Department] [varchar](100) NULL,
	[Person Division] [varchar](100) NULL,
	[Person Active Indicator] [varchar](20) NULL,
	[Person Do Not Email] [varchar](15) NULL,
	[Person Do Not Call] [varchar](15) NULL,
	[Person Level] [varchar](max) NULL,
	[Person Source File] [varchar](100) NULL,
	[Person Role Name] [varchar](100) NULL,
	[Person Profile Name] [varchar](100) NULL,
	[Person Manager Id] [varchar](18) NULL,
	[Person Manager URL] [varchar](200) NULL,
	[Person Manager Last Name] [varchar](100) NULL,
	[Person Manager First Name] [varchar](50) NULL,
	[Person Manager Full Name] [varchar](100) NULL,
	[Person Manager Email] [varchar](100) NULL,
	[Person Owner Id] [varchar](18) NULL,
	[Person Owner URL] [varchar](200) NULL,
	[Person Owner Last Name] [varchar](50) NULL,
	[Person Owner First Name] [varchar](50) NULL,
	[Person Owner Full Name] [varchar](100) NULL,
	[Person Owner Email] [varchar](100) NULL,
	[Person Custom 1] [varchar](100) NULL,
	[Person Custom 2] [varchar](100) NULL,
	[Person Custom 3] [varchar](100) NULL,
	[Person Custom 4] [varchar](100) NULL,
	[Person Custom 5] [varchar](100) NULL,
	[Person Zip5] [varchar](50) NULL, 
    CONSTRAINT [PK_GD_Account_Owner_Dim] PRIMARY KEY ([Person Dim Id])
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
