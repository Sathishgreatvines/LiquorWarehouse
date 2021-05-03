CREATE TABLE [ERPIn].[RAD]
(
  [ERPInRADSKey] int identity(1,1),
  Transaction_Type        char(1)       NOT NULL,
  Transaction_Date        date          NULL,
  Item_Key                varchar(255)  NOT NULL,
  [Distributor_Key]       varchar(255)  NOT NULL,
  Retailer_Ext_Key        varchar(255)  NOT NULL,
  Date_of_Data            date          NOT NULL,
  Physical_Cases          decimal(14,4) NOT NULL,
  Extended_Price          money,
  [Extended_Price_2]      money,
  Invoice_Number          varchar(255),
  Dist_Item_Number        varchar(255),
  Sales_Rep_Key           varchar(255),
  Sales_Div_Key           varchar(255),
  Tax_Amount              money,
  Addl_Charges_Amt        money,
  Deposit_Amt             money,
  Custom_1                nvarchar(255),
  Custom_2                nvarchar(255),
  Order_Number            varchar(255),
  Unit_of_Measure         varchar(20), 
  [Custom_Fact_1] DECIMAL(14, 4) NULL,
  [Custom_Fact_2] DECIMAL(14, 4) NULL,
  [SourceFile]            VARCHAR(100) NULL, 
    CONSTRAINT [PK_RAD] PRIMARY KEY ([ERPInRADSKey])
)

GO

CREATE INDEX [IX_RAD_RADKey] ON [ERPIn].[RAD] ([Date_of_Data])
INCLUDE ([Transaction_Type], [Distributor_Key], [Retailer_Ext_Key], [Invoice_Number], [Item_Key], [Dist_Item_Number])

