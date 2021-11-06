﻿CREATE TABLE [ERPIn].[Retailer]
(
	Transaction_Date			DATE NOT NULL,
	Transaction_Type			CHAR(1) NOT NULL,
	Transfer_Date				DATE NULL,
	Account_Segment 			VARCHAR(50) NULL,  
	Active_Flag					VARCHAR(25) NULL,
	BDN_Account_Type 			VARCHAR(100) NULL, 
	BDN_Id						VARCHAR(100) NULL,
	Beer_Volume					VARCHAR(100) NULL,
	Chain_Banner_Name			NVARCHAR(255) NULL,
	Chain_HQ_1_Key				VARCHAR(100) NULL,
	Chain_HQ_1_Name				NVARCHAR(255) NULL,
	Chain_HQ_2_Key				VARCHAR(100) NULL,
	Chain_HQ_2_Name				NVARCHAR(255) NULL,
	Chain_HQ_3_Key				VARCHAR(100)  NULL,
	Chain_HQ_3_Name				NVARCHAR(255) NULL,
	Chain_HQ_4_Key				VARCHAR(100)  NULL,
	Chain_HQ_4_Name				NVARCHAR(255) NULL,
	Chain_Ind					VARCHAR(255) NULL,
	Chain_Marketing_Group_Code  VARCHAR(255)  NULL,
	Chain_Marketing_Group_Name  NVARCHAR(255) NULL,
	City						NVARCHAR(50) NULL,
	Close_Date					DATE NULL,
	Country						NVARCHAR(50)  NULL,
	County_Name					VARCHAR(100)  NULL,
	Custom_7 					NVARCHAR(255) NULL, 
	Custom_8 					NVARCHAR(255) NULL, 
	CustomerPriority 			VARCHAR(100) NULL,
	Customer_Priority           NVARCHAR(100) NULL,
	Dist_Acct_Number			NVARCHAR(80)  NULL,
	Distributor_Key				VARCHAR(255)  NULL,
	Fax							VARCHAR(50)   NULL,
	FIPS_County_Code			VARCHAR(10) NULL,
	FIPS_State_Code				VARCHAR(10) NULL,
	Food_Type					VARCHAR(255) NULL,
	Franchise					VARCHAR(50) NULL,
	gvp__Custom_6__c			NVARCHAR(255) NULL,
	Key_Account					NVARCHAR(100) NULL,
	Key_Account_1_Key			VARCHAR(100) NULL,
	Key_Account_1_Name			NVARCHAR(255) NULL,
	Key_Account_2_Key			VARCHAR(100) NULL,
	Key_Account_2_Name			NVARCHAR(255) NULL,
	Latitude					DECIMAL(14,11) NULL,
	License_Number				VARCHAR(255) NULL,
	License_Type				VARCHAR(100) NULL, 
	Longitude					DECIMAL(14,11) NULL,
	MSA_Code					VARCHAR(25) NULL,
	Open_Date					DATE NULL,
	Outlet_Number				VARCHAR(60) NULL,
	Owner						NVARCHAR(100) NULL,
	OwnerKey					VARCHAR(255)  NULL,
	Parent_Account              NVARCHAR(100) NULL,
	Phone						VARCHAR(50)  NULL,
	Premise_Type				VARCHAR(80) NOT NULL,
	Primary_Contact_Name		NVARCHAR(255) NULL,
	Primary_Ethnicity			VARCHAR(255)  NULL,
	Retailer_Ext_Key			VARCHAR(100) NOT NULL,
	Retailer_Key				VARCHAR(255)  NOT NULL,
	Retailer_Name				NVARCHAR(255) NOT NULL,
	SourceFile					VARCHAR(255) NULL,
	Shipping_City				NVARCHAR(100) NULL,
	Shipping_Country			NVARCHAR(40)    NULL,
	Shipping_State				NVARCHAR(80)    NULL,
	Shipping_Street_1			NVARCHAR(255) NULL,
	Shipping_Street_2			NVARCHAR(255) NULL, 
	Shipping_Zip_Code 			NVARCHAR(20)    NULL,
	State						NVARCHAR(80)  NULL,
	Status_Indicator            NVARCHAR(100) NULL,
	Store_Volume				NVARCHAR(255) NULL,
	Street_1					NVARCHAR(255) NULL,
	Street_2					NVARCHAR(255) NULL, 
	Sub_Channel					NVARCHAR(255)  NULL,
	Territory                   VARCHAR(70) NULL,
	Territory_Key				VARCHAR(255) NULL,
	Trade_Channel				NVARCHAR(255) NULL,
	Zip_Code					NVARCHAR(20)  NULL,
	CONSTRAINT [PK_Retailer] PRIMARY KEY (Retailer_Key)
	)