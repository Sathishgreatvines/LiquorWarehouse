CREATE TABLE [ERPIn].[Budget_Goal_Months]
(
    RowNumber int identity(1,1) not null,
	Transaction_Type            char(1)       not null,
    Transaction_Date            date          not null,
	Geo_Key				        varchar(255)  null,
	Product_Key					varchar(255)  null,
	Goal_Type					varchar(255)  not null,
	Value_Type	                varchar(255)  not null,
	[Year]                      varchar(10)   not null,
	JAN                         decimal(16,2) null,
	FEB                         decimal(16,2) null,
	MAR                         decimal(16,2) null,
	APR                         decimal(16,2) null,
	MAY                         decimal(16,2) null,
	JUN                         decimal(16,2) null,
	JUL                         decimal(16,2) null,
	AUG                         decimal(16,2) null,
	SEP                         decimal(16,2) null,
	OCT                         decimal(16,2) null,
	NOV                         decimal(16,2) null,
	[DEC]                       decimal(16,2)null,
	CONSTRAINT [PK_Budget_Goal_Month] PRIMARY KEY ([RowNumber])

)
