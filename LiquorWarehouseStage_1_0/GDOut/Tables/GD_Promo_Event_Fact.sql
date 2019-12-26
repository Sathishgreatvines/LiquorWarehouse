﻿CREATE TABLE [GDOut].[GD_Promo_Event_Fact](
	[Promo_Event_Fact_Id] [char](18) NOT NULL,
	[Promo_Event_Fact_Type] [varchar](50) NULL,
	[Account_Call_Fact_Id] [char](18) NULL,
	[Activity_Fact_Id] [char](18) NULL,
	[Spend_Dim_Id] [char](18) NULL,
	[Txn_Type_Id] [varchar](50) NULL,
	[Activity_Goal_Dim_Id] [char](18) NULL,
	[Geography_Dim_Id] [char](18) NULL,
	[Currency_Dim_Id] [varchar](50) NULL,
	[Contact_Dim_Id] [char](18) NULL,
	[Account_Dim_Id] [char](18) NULL,
	[Acct_Univ_Dim_Id] [char](18) NULL,
	[Person_Dim_Id] [char](18) NULL,
	[Product_Dim_Id] [char](18) NULL,
	[Fiscal_Date_Dim_Id] [varchar](50) NULL,
	[Created_Date] [nvarchar](10) NULL,
	[Modified_Date] [nvarchar](10) NULL,
	[Transaction_Date] [nvarchar](10) NULL,
	[Start_Date] [nvarchar](10) NULL,
	[Fiscal_Date] [nvarchar](10) NULL,
	[Fiscal_Month] [varchar](50) NULL,
	[Fiscal_Year] [varchar](50) NULL,
	[Create_Date] [nvarchar](10) NULL,
	[Promo_Event_Id] [varchar](50) NULL,
	[Promo_Event_Name] [varchar](50) NULL,
	[Promo_Event_URL] [nvarchar](200) NULL,
	[Promo_Event_Activity_Type] [varchar](50) NULL,
	[Promo_Event_Activity_Group] [varchar](50) NULL,
	[Promo_Event_Status] [varchar](50) NULL,
	[Promo_Event_Bottles_Sold] [varchar](50) NULL,
	[Promo_Event_Drinks_Sold] [varchar](50) NULL,
	[Promo_Event_Drinks_Purchased] [varchar](50) NULL,
	[Promo_Event_Actual_Cost] [varchar](50) NULL,
	[Promo_Event_Brand_Promoted] [varchar](50) NULL,
	[Promo_Event_Description] [varchar](80) NULL,
	[Promo_Event_ERF_Received] [varchar](50) NULL,
	[Promo_Event_Total_Budget] [varchar](50) NULL,
	[Promo_Event_Bartab_Budget] [varchar](50) NULL,
	[Promo_Event_Staff_Budget] [varchar](50) NULL,
	[Promo_Event_Featured_Drink] [varchar](50) NULL,
	[Promo_Event_Consumers_Sampled] [varchar](50) NULL,
	[Promo_Event_Samples_Given] [varchar](50) NULL,
	[Promo_Event_Samplers_Required] [varchar](50) NULL,
	[Promo_Event_Bartenders_Required] [varchar](50) NULL,
	[Promo_Event_Custom_1] [nvarchar](200) NULL,
	[Promo_Event_Custom_2] [nvarchar](200) NULL,
	[Promo_Event_Custom_3] [nvarchar](200) NULL,
	[Promo_Event_Custom_4] [nvarchar](200) NULL,
	[Promo_Event_Custom_5] [nvarchar](200) NULL,
	[Promo_Event_Custom_Fact_1] [nvarchar](200) NULL,
	[Promo_Event_Custom_Fact_2] [nvarchar](200) NULL,
	[Promo_Event_Actual_Bar_Tab] [varchar](50) NULL,
	[Promo_Event_Actual_Staff_Cost] [varchar](50) NULL,
	[Promo_Event_Bartender_Feedback] [varchar](50) NULL,
	[Promo_Event_Customer_Feedback] [varchar](50) NULL,
	[Promo_Event_Type] [varchar](50) NULL,
	[Promo_Event_Record_Type_Id] [varchar](50) NULL,
	[Promo_Event_Record_Type] [varchar](50) NULL,
	[Promo_Event_Program] [varchar](50) NULL,
	[Promo_Event_Program_Type] [varchar](50) NULL,
	[Promo_Event_Product_Granularity] [varchar](50) NULL,
	[Promo_Event_Product_Name] [varchar](50) NULL,
	[Megacall_Geocode] [varchar](50) NULL,
	[Megacall_Longitude] [varchar](50) NULL,
	[Megacall_Latitude] [varchar](50) NULL,
	[Megacall_Distance] [varchar](50) NULL,
	[Txn_Date_Id] [int] NULL,
	[Start_Date_Id] [int] NULL,
	[Fiscal_Date_Id] [int] NULL,
	[Create_Date_Id] [int] NULL,
	CONSTRAINT [PK_GD_Promo_Event_Fact] PRIMARY KEY ([Promo_Event_Fact_Id])
) ON [PRIMARY]
GO