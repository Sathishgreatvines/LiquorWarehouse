CREATE TABLE [ERPIn].[ComboPacks](
Combo_Pack_Key			varchar(50) NOT NULL, 
Combo_Pack_Item_Key		varchar(30) NOT NULL, 			
Component_Item_Key		varchar(30) NOT NULL, 
Component_Qty			INT,
Component_UOM			varchar(5)
CONSTRAINT [PK_ComboPacks] PRIMARY KEY (Combo_Pack_Key)
)
