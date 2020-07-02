﻿CREATE TABLE [GVW].[SpendFact](
[ID]						VARCHAR(18) NOT NULL,					
[URL]					nvarchar(100) NULL,                
[Name]					nvarchar(100) NULL,                
[Type]         			nvarchar(20) NULL,                 
[CreatedDate]                   	char (10) NULL,                    
[ModifiedDate]                    	char (10) NULL,                    
[TxnDate]                          char (10) NULL,                    
[FiscalYear]                       int NULL,                          
[FiscalMonth]                      nvarchar(2) NULL,                          
[FiscalDate]                       char (10) NULL,                    
[FiscalDateDimID]                VARCHAR (10) NULL,                    
[TxnAltDate]                      char (10) NULL,                    
[PersonDimID]                     VARCHAR(18) NULL,                    
[SpendDimID]                      VARCHAR(18) NULL,                    
[GeographyDimID]                  VARCHAR(18) NULL,                    
[ProductDimID]                    VARCHAR(18) NULL,                    
[AccountDimID]                    VARCHAR(18) NULL,                    
[AcctUnivDimID]                  VARCHAR(18) NULL,                    
[CurrencyDimID]                   VARCHAR(18) NULL,                    
[TxnTypeID]                       VARCHAR (5) NULL,                     
[SpendOwnerID]                    VARCHAR(18) NULL,                    
[SpendOwnerURL]                   nvarchar(100) NULL,                
[SpendOwnerUsername]              nvarchar(50) NULL,                 
[SpendOwnerFullName]             nvarchar(100) NULL,                
[SpendOwnerLastName]             nvarchar(50) NULL,                 
[SpendOwnerFirstName]            nvarchar(50) NULL,                 
[SpendOwnerEmail]                 nvarchar(50) NULL,                 
[SpendOwnerExternalID]                   nvarchar(50) NULL,                 
[InvoiceID]                        VARCHAR(18) NULL,                    
[InvoiceURL]                       nvarchar(100) NULL,                
[InvoiceName]                      nvarchar(30) NULL,                 
[InvoiceNumber]                    nvarchar(50) NULL,                 
[InvoiceNotes]                     nvarchar(250) NULL,                
[InvoiceStatus]                    nvarchar(50) NULL,                 
[InvoiceAmount]                    nvarchar(20) NULL,                             
[InvoiceType]                      nvarchar(20) NULL,                 
[InvoiceActionAmount]             nvarchar(20) NULL,                             
[InvoiceActionReason]             Char(5),                           
[InvoicePaymentMethod]            nvarchar(10) NULL,                 
[InvoicePostingDate]              char(10) NULL,                     
[InvoiceCustomText1]             nvarchar(50) NULL,                 
[InvoiceCustomText2]             nvarchar(50) NULL,                 
[InvoiceCustomText3]             nvarchar(50) NULL,                 
[InvoiceCustomText4]             nvarchar(50) NULL,                 
[InvoiceCustomText5]             nvarchar(50) NULL,                 
[InvoiceCustomPicklist1]         nvarchar(20) NULL,                 
[InvoiceCustomPicklist2]         nvarchar(20) NULL,                 
[InvoiceCustomNumber1]           nvarchar(20) NULL,                 
[InvoiceCustomNumber2]           nvarchar(20) NULL,                 
[InvoiceCustomCurrency1]         nvarchar(20) NULL,                 
[InvoiceCustomCurrency2]         nvarchar(20) NULL,                 
[PlannedSpendID]                  VARCHAR(18) NULL,                     
[PlannedSpendURL]                 nvarchar(100) NULL,                
[PlannedSpendName]                nvarchar(100) NULL,                
[PlannedSpendDescription]         nvarchar(200) NULL,                
[PlannedSpendStatus]              nvarchar(10) NULL,                 
[PlannedSpendAmount]              nvarchar(20) NULL,                             
[PlannedSpendType]                nvarchar(20) NULL,                 
[PlannedSpendCustom1]            nvarchar(100) NULL,                
[PlannedSpendCustom2]            nvarchar(100) NULL,                
[PlannedSpendCustom3]            nvarchar(100) NULL,                
[PlannedSpendCustom4]            nvarchar(100) NULL,                
[PlannedSpendCustom5]            nvarchar(100) NULL,                
[PlannedSpendCustomPicklist1]   nvarchar(10) NULL,                 
[PlannedSpendCustomPicklist2]   nvarchar(10) NULL,                 
[PlannedSpendCustomNumber1]     nvarchar(10) NULL,                 
[PlannedSpendCustomNumber2]     nvarchar(10) NULL,                 
[PlannedSpendCustomCurrency1]   nvarchar(10) NULL,                 
[PlannedSpendCustomCurrency2]   nvarchar(10) NULL,                 
[PlannedSpendCustomCheckbox1]   nvarchar(10) NULL,                 
[PlannedSpendCustomCheckbox2]   nvarchar(10) NULL,                 
[ExpenseID]                        VARCHAR(18) NULL,                     
[ExpenseURL]                       nvarchar(100) NULL,                
[ExpenseName]                      nvarchar(20) NULL,                 
[ExpenseNotes]                     nvarchar(300) NULL,                
[ExpenseDescription]               nvarchar(300) NULL,                
[ExpenseStatus]                    nvarchar(20) NULL,                 
[ExpenseAmount]                    nvarchar(20) NULL,                             
[ExpenseApprovalStatus]           nvarchar(20) NULL,                 
[ExpenseLinkedAmount]             nvarchar(20) NULL,                             
[ExpensePOSCode]                  nvarchar(20) NULL,                 
[ExpensePOSName]                  nvarchar(20) NULL,                 
[ExpensePlannedAmount]            nvarchar(20) NULL,                             
[ExpenseQuantity]                  nvarchar(10) NULL,                          
[ExpenseType]                      nvarchar(20) NULL,                 
[ExpenseLinkType]                 nvarchar(20) NULL,                 
[ExpenseSpendType]                nvarchar(50) NULL,                 
[ExpenseCustom1]                  nvarchar(50) NULL,                 
[ExpenseCustom2]                  nvarchar(50) NULL,                 
[ExpenseCustom3]                  nvarchar(50) NULL,                 
[ExpenseCustom4]                  nvarchar(50) NULL,                 
[ExpenseCustom5]                  nvarchar(50) NULL,                 
[ExpenseCustomPicklist1]         nvarchar(50) NULL,                 
[ExpenseCustomPicklist2]         nvarchar(50) NULL,                 
[ExpenseCustomPicklist3]         nvarchar(50) NULL,                 
[ExpenseCustomPicklist4]         nvarchar(50) NULL,                 
[ExpenseCustomNumber1]           nvarchar(50) NULL,                 
[ExpenseCustomNumber2]           nvarchar(50) NULL,                 
[ExpenseCustomCurrency1]         nvarchar(50) NULL,                 
[ExpenseCustomCurrency2]         nvarchar(50) NULL,                 
[CustomDate1]          Char(10) NULL,                     
[CustomDate2]			Char(10) NULL,
[TxnDateID]						int NULL,
[FiscalDateID]					int NULL,
[TxnAltDateID]					int NULL,
GVWCreatedDate       datetime    default getdate() NOT NULL,
GVWLastModifiedDate  datetime    default getdate() NOT NULL,
GVWSourceID  INT default (-1),
GVWDeleted BIT NULL DEFAULT '0'
CONSTRAINT [PK_SpendFact] PRIMARY KEY ([ID]), 
    [GVWHash] VARCHAR(32) NOT NULL DEFAULT 0
);