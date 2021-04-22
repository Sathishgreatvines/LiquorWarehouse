CREATE TABLE [ERPIn].[Depletion]
(
  RowNumber int identity(1,1) not null,
  Transaction_Type            char(1)       NOT null,
  Transaction_Date            date          NOT null,
  Distributor_Key             varchar(255)  NOT null,
  Item_Key                    varchar(255)  NOT null,
  Date_of_Data                VARCHAR(10)   NOT null,
  Physical_Cases              decimal(14,4) NOT null,
  Opening_Balance             decimal(14,4) null,
  Closing_Balance             decimal(14,4) null,
  Adjustments                 decimal(14,4) null,
  In_Bond                     decimal(14,4) null,
  On_Order                    decimal(14,4) null,
  Receipts                    decimal(14,4) null,
  Transfers_In                decimal(14,4) null,
  Transfers_Out               decimal(14,4) null,
  Wholesales_Sales            decimal(14,4) null, 
  [SourceFile]                VARCHAR(100) NULL, 
    CONSTRAINT [PK_Depletion] PRIMARY KEY ([RowNumber])
)
