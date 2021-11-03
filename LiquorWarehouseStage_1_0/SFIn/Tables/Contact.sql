﻿CREATE TABLE [SFIn].[Contact] (
    [Id]                               varchar (18)     NOT NULL,
    [IsDeleted]                        VARCHAR (10)     NOT NULL,
    [MasterRecordId]                   char (18)     NULL,
    [AccountId]                        char (18)     NULL,
    [LastName]                         NVARCHAR (80)     NULL,
    [FirstName]                        NVARCHAR (50)     NULL,
    [Salutation]                       NVARCHAR (255)      NULL,
    [Name]                             Nvarchar(255)    NULL,
    [RecordTypeId]                     char (18)     NULL,
    [OtherStreet]                      NVARCHAR (300)    NULL,
    [OtherCity]                        NVARCHAR (50)     NULL,
    [OtherState]                       NVARCHAR (35)     NULL,
    [OtherPostalCode]                  NVARCHAR (15)     NULL,
    [OtherCountry]                     NVARCHAR (50)     NULL,
    [OtherLatitude]                    DECIMAL (14, 11) NULL,
    [OtherLongitude]                   DECIMAL (14, 11) NULL,
    [OtherGeocodeAccuracy]             VARCHAR (20)     NULL,
    [MailingStreet]                    NVARCHAR (300)    NULL,
    [MailingCity]                      NVARCHAR (100)     NULL,
    [MailingState]                     NVARCHAR (50)     NULL,
    [MailingPostalCode]                NVARCHAR (25)     NULL,
    [MailingCountry]                   NVARCHAR (50)     NULL,
    [MailingLatitude]                  DECIMAL (14, 11) NULL,
    [MailingLongitude]                 DECIMAL (14, 11) NULL,
    [MailingGeocodeAccuracy]           VARCHAR (20)     NULL,
    [Phone]                            VARCHAR (50)     NULL,
    [Fax]                              Varchar(50)     NULL,
    [MobilePhone]                      VARCHAR (50)     NULL,
    [HomePhone]                        NVARCHAR (255)     NULL,
    [OtherPhone]                       VARCHAR (50)     NULL,
    [AssistantPhone]                   Varchar(50)     NULL,
    [ReportsToId]                      char (18)     NULL,
    [Email]                            Nvarchar(255)    NULL,
    [Title]                            NVARCHAR (128)     NULL,
    [Department]                       NVARCHAR (100)     NULL,
    [AssistantName]                    NVARCHAR (50)     NULL,
    [LeadSource]                       NVARCHAR (255)     NULL,
    [Birthdate]                        DATE             NULL,
    [Description]                      nvarchar(max)   NULL,
    [OwnerId]                          char (18)     NULL,
    [HasOptedOutOfEmail]               NVARCHAR (255)     NULL,
    [DoNotCall]                        Nvarchar(255)     NULL,
    [CreatedDate]                      DATETIME         NULL,
    [CreatedById]                      char (18)     NULL,
    [LastModifiedDate]                 DATETIME         NULL,
    [LastModifiedById]                 char (18)     NULL,
    [SystemModstamp]                   DATETIME         NULL,
    [LastActivityDate]                 DATE         NULL,
    [LastCURequestDate]                DATETIME         NULL,
    [LastCUUpdateDate]                 DATETIME         NULL,
    [LastViewedDate]                   DATETIME         NULL,
    [LastReferencedDate]               DATETIME         NULL,
    [EmailBouncedReason]               NVARCHAR (500)    NULL,
    [EmailBouncedDate]                 DATETIME         NULL,
    [IsEmailBounced]                   VARCHAR (10)     NULL,
    [PhotoUrl]                         NVARCHAR (100)    NULL,
    [Jigsaw]                           NVARCHAR (255)    NULL,
    [JigsawContactId]                  NVARCHAR (100)    NULL,
    [gvp__Division__c]                 char (18)     NULL,
    [gvp__HomeEmail__c]                NVARCHAR (255)    NULL,
    [gvp__Level__c]                    NVARCHAR (255)     NULL,
    [gvp__Role__c]                     NVARCHAR (255)     NULL,
    [gvp__Spouse__c]                   NVARCHAR (100)    NULL,
    [gvp__WorkEmail__c]                NVARCHAR (255)    NULL,
    [gvp__WorkPhone__c]                VARCHAR (50)     NULL,
    [gvp__Salesman_Key__c]             Nvarchar(255)     NULL,
    [gvp__Salesman_Number__c]          Nvarchar(255)     NULL,
    [gvp__Age_Calculated__c]           Nvarchar(255)   NULL,
    [gvp__Attributes__c]               Nvarchar(255)     NULL,
    [gvp__Company__c]                  Nvarchar(255)     NULL,
    [gvp__Contact_Method__c]           Nvarchar(255)     NULL,
    [gvp__Customer_Key__c]             Nvarchar(255)    NULL,
    [gvp__Email_Key__c]                NVARCHAR (255)     NULL,
    [gvp__Facebook_Fan__c]             NVARCHAR (255)     NULL,
    [gvp__Favorite_Destination_s__c]   NVARCHAR (255)     NULL,
    [gvp__Favorite_Hotel_s__c]         NVARCHAR (255)     NULL,
    [gvp__Favorite_Product_s__c]       NVARCHAR (255)     NULL,
    [gvp__Favorite_Restaurants__c]     NVARCHAR (255)     NULL,
    [gvp__Join_Date__c]                DATE             NULL,
    [gvp__Last_Visit__c]               DATE             NULL,
    [gvp__Other_Tastes_Preferences__c] NVARCHAR (500)    NULL,
    [gvp__Referred_By__c]              char (18)     NULL,
    [gvp__Twitter_Username__c]         NVARCHAR (100)    NULL,
    [gvp__Consumer_Order_Amount__c]    decimal(16,2)            NULL,
    [gvp__Consumer_Order_Total__c]     decimal(16,2)            NULL,
    [gvp__Source_File__c]              NVARCHAR (255)     NULL,
    [gvp__Custom_1__c]                 NVARCHAR (255)    NULL,
    [gvp__Custom_2__c]                 NVARCHAR (255)    NULL,
    [gvp__Custom_3__c]                 NVARCHAR (255)    NULL,
    [gvp__Custom_4__c]                 NVARCHAR (255)    NULL,
    [gvp__Custom_5__c]                 NVARCHAR (255)    NULL,
    [gvp__Sales_Team_Division__c]      char (18)     NULL,
    [gvp__Active__c]                   Nvarchar(255)     NULL,
    CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED ([Id] ASC)
);