﻿CREATE TABLE ERPIn.[Retailer]
(
  Transaction_Type      char(1)       NOT NULL,
  Transaction_Date      date          NOT NULL,
  Retailer_Key          varchar(255)  NOT NULL,
  Retailer_Name         nvarchar(255) NOT NULL,
  Street_1              nvarchar(255) NOT NULL,
  Street_2              nvarchar(255) NOT NULL,
  City                  nvarchar(40)  NOT NULL,
  [State]               nvarchar(20)  NOT NULL,
  Zip_Code              nvarchar(20)  NOT NULL,
  County                nvarchar(40)  NOT NULL,
  Phone                 varchar(20)   NOT NULL,
  Fax                   varchar(20),
  Distributor_Key       varchar(255)  NOT NULL,
  Dist_Acct_Number      varchar(40),
  Territory_Key         varchar(32)   NOT NULL,
  [Owner]               varchar(32)   NOT NULL,
  Key_Account           char(1),
  Retailer_Ext_Key      varchar(40)   NOT NULL,
  Premise_Type          varchar(20)   NOT NULL,
  Chain_Ind             varchar(20)   NOT NULL,
  Trade_Channel         varchar(20),
  Sub_Channel           varchar(20),
  Food_Type             varchar(20),
  License_Number        varchar(255),
  Primary_Contact_Name  varchar(255),
  Active_Flag           char(1)       NOT NULL,
  Chain_Banner_Name     nvarchar(255) NOT NULL,
  Chain_HQ_1_Key        varchar(40),
  Chain_HQ_1_Name       nvarchar(255),
  Chain_HQ_2_Key        varchar(40),
  Chain_HQ_2_Name       nvarchar(255),
  Chain_HQ_3_Key        varchar(40),
  Chain_HQ_3_Name       nvarchar(255),
  Chain_HQ_4_Key        varchar(40),
  Chain_HQ_4_Name       nvarchar(255),
  County_Name           nvarchar(50),
  OwnerKey              varchar(32),
  Key_Account_1_Key     varchar(40),
  Key_Account_1_Name    nvarchar(255),
  Key_Account_2_Key     varchar(40),
  Key_Account_2_Name    nvarchar(255),
  FIPS_State_Code       int,
  FIPS_County_Code      int,
  Primary_Ethnicity     varchar(50),
  Open_Date             date          NOT NULL,
  Close_Date            date,
  Transfer_Date         date,
  Chain_Marketing_Group_Code  varchar(255),
  Chain_Marketing_Group_Name  varchar(255),
  Franchise             varchar(20),
  Latitude              decimal(12,4),
  Longitude             decimal(12,4),
  MSA_Code              varchar(255),
  Outlet_Number         varchar(20),
  Store_Volume          varchar(255),
  Custom_1              nvarchar(255),
  Custom_2              nvarchar(255),
  Custom_3              nvarchar(255),
  Custom_4              nvarchar(255),
  Custom_5              nvarchar(255), 
  Custom_6              nvarchar(255),
  Custom_7              nvarchar(255),
  Custom_8              nvarchar(255),
  Custom_9              nvarchar(255),
  Custom_10             nvarchar(255), 
    CONSTRAINT [PK_Retailer] PRIMARY KEY ([Retailer_Key], [Retailer_Ext_Key])
)