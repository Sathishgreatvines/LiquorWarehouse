CREATE TABLE [ERPIn].[Inventory]
(
	RowNumber                   int identity(1,1) not null,
	Item_Key				    varchar(255)      not null,
	Warehouse_Location			varchar(18)       not null,
	Avaliable_Quantity			decimal(16,2)     not null,
	On_Hand_Quantity            decimal(16,2)     null,
	On_Order_Quantity           decimal(16,2)     null,
	Date_Of_Data                date              not null,
	CONSTRAINT [PK_Inventory] PRIMARY KEY ([RowNumber])
)
