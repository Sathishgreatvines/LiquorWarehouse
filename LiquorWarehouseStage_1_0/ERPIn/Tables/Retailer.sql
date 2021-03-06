﻿CREATE TABLE [ERPIn].[Retailer]
(
	Transaction_Type            char(1)		  	 NOT NULL,
	Transaction_Date            date			 NOT NULL,
	Retailer_Key				VARCHAR (100) 	 NOT NULL,
	Retailer_Name				NVARCHAR (250)   NOT NULL,
	Street_1					nvarchar(255)	 NULL,
	Street_2		 			nvarchar(255)	 NULL,	
	City						NVARCHAR (50)	 NULL,
	State						NVARCHAR (35)    NULL,
	Zip_Code					NVARCHAR (20)    NULL,
	Country						NVARCHAR (40)    NULL,
	Phone						VARCHAR (50)     NULL,
	Fax							VARCHAR (50)     NULL,
	Distributor_Key				VARCHAR (70)     NULL,
	Dist_Acct_Number			NVARCHAR (80)    NULL,
	Territory_Key				VARCHAR (70)	 NOT NULL,
	Owner						NVARCHAR (100)   NULL,
	Key_Account					NVARCHAR (100)   NULL,
	Retailer_Ext_Key			VARCHAR (100)	 NOT NULL,
	Premise_Type				VARCHAR (50)	 NOT NULL,
	Chain_Ind					VARCHAR(30)		 NULL,
	Trade_Channel				NVARCHAR (100)	 NULL,
	Sub_Channel					NVARCHAR (100)   NULL,
	Food_Type					VARCHAR (100)	 NULL,
	License_Number				VARCHAR (30)	 NULL,
	Primary_Contact_Name		NVARCHAR (180)	 NULL,
	Active_Flag					VARCHAR (25)	 NULL,
	Chain_Banner_Name 			NVARCHAR (250)	 NULL,
	Chain_HQ_1_Key 				VARCHAR (100)	 NULL,
	Chain_HQ_1_Name				NVARCHAR (250)   NULL,
	Chain_HQ_2_Key 				VARCHAR (100)  	 NULL,
	Chain_HQ_2_Name 			NVARCHAR (250)   NULL,
	Chain_HQ_3_Key 				VARCHAR (100) 	 NULL,
	Chain_HQ_3_Name 			NVARCHAR (100)   NULL,
	Chain_HQ_4_Key 				VARCHAR (100) 	 NULL,
	Chain_HQ_4_Name 			NVARCHAR (100)   NULL,
	County_Name 				VARCHAR (100) 	 NULL,
	OwnerKey 					VARCHAR (100) 	 NULL,
	Key_Account_1_Key 			VARCHAR (100) 	 NULL,
	Key_Account_1_Name 			NVARCHAR (250)   NULL,
	Key_Account_2_Key			VARCHAR (100) 	 NULL,
	Key_Account_2_Name 			NVARCHAR (250)   NULL,
	FIPS_State_Code 			VARCHAR (10)	 NULL,
	FIPS_County_Code			VARCHAR (10)	 NULL,
	Primary_Ethnicity			VARCHAR (100) 	 NULL,
	Open_Date					DATE			 NULL,
	Close_Date					DATE			 NULL,
	Transfer_Date				DATE			 NULL,
	Chain_Marketing_Group_Code  VARCHAR (100) 	 NULL,
	Chain_Marketing_Group_Name  NVARCHAR (250)   NULL,
	Franchise					VARCHAR (50)	 NULL,
	Latitude					DECIMAL(14,11)   NULL,
	Longitude					DECIMAL(14,11)   NULL,
	MSA_Code					VARCHAR (25)	 NULL,
	Outlet_Number				VARCHAR (60)	 NULL,
	Store_Volume				NVARCHAR(200)	 NULL,
	SourceFile					VARCHAR(100)	 NULL,
	CONSTRAINT [PK_Retailer] PRIMARY KEY (Retailer_Key)
	)