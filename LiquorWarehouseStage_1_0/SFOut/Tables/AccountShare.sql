CREATE TABLE [SFOut].[AccountShare]
(
	[Id] char(18) NULL, 
	IsDeleted varchar(10) null,
	LastModifiedDate datetime null,
	LastModifiedById varchar(18) null,
	AccountId varchar(18) null,
	UserOrGroupId char(18) null,
	AccountAccessLevel varchar(20) null,
	OpportunityAccessLevel varchar(20)  null,
	CaseAccessLevel varchar(20) null,
	ContactAccessLevel varchar(20) null,
	RowCause varchar(20) null) 