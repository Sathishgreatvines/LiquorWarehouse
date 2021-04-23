CREATE TABLE [ERPIn].[Orders]
(
  RowNumber int identity(1,1) not null,
	Transaction_Type            char(1)       not null,
    Transaction_Date            date          not null,
	Order_Number				varchar(50)	  not null,
	Order_Line_Number			varchar(50)	  null,
	Ship_Date					date          null,
	Order_Date					VARCHAR(10)   Not null,
	Order_Type					varchar(255)  null,
	Order_Status				varchar(255)  null,
	Distributor_Key				varchar(255)  not null,
	Item_Key					varchar(255)  not null,
	Physical_Cases			    decimal(14,4) not null,
	Extended_Price				money         null,
	Extended_Price_2			money         null,
    CONSTRAINT [PK_Orders] PRIMARY KEY ([RowNumber])
)