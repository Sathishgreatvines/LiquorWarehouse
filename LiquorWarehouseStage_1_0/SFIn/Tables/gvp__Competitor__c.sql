CREATE TABLE [SFIn].[gvp__Competitor__c]
(
  [Id] char(18) NOT NULL, 
	OwnerId char(18) not null,
	IsDeleted varchar(10) not null,
	Name nvarchar(100) not null,
	CreatedDate datetime not null,
	CreatedById char(18) not null,
	LastModifiedDate datetime not null,
	LastModifiedById char(18) not null,
	SystemModstamp datetime not null,
	LastViewedDate datetime null,
	LastReferencedDate datetime null,
	gvp__Size__c char(18) null,
	gvp__Type__c nvarchar(255) null,
	gvp__External_ID__c nvarchar(64) null,
	gvp__Custom_Fact_1__c decimal(24,8) null,
	gvp__Custom_Fact_2__c decimal(24,8) null,
	gvp__Custom_Text_1__c nvarchar(255)
	null,
	gvp__Custom_Text_2__c nvarchar(255)
	null,
	gvp__Custom_Text_3__c nvarchar(255)
	null,
	gvp__Custom_Text_4__c nvarchar(255)
	null,
	gvp__Custom_Text_5__c nvarchar(255)
	null
    CONSTRAINT [PK_gvp__Competitor__c] PRIMARY KEY ([Id]) 
)
