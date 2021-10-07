﻿CREATE TABLE [SFIn].[Contact] (
    [Id]                               VARCHAR(18)     NOT NULL,
    [IsDeleted]                        VARCHAR (10)     NOT NULL,
    [MasterRecordId]                   char (18)     NULL,
    [AccountId]                        char (18)     NULL,
    [LastName]                         NVARCHAR (80)     NULL,
    [FirstName]                        NVARCHAR (50)     NULL,
    [Salutation]                       NVARCHAR (30)      NULL,
    [Name]                             NVARCHAR (110)    NULL,
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
    [Fax]                              VARCHAR (40)     NULL,
    [MobilePhone]                      VARCHAR (50)     NULL,
    [HomePhone]                        VARCHAR (25)     NULL,
    [OtherPhone]                       VARCHAR (30)     NULL,
    [AssistantPhone]                   VARCHAR (25)     NULL,
    [ReportsToId]                      char (18)     NULL,
    [Email]                            NVARCHAR (200)    NULL,
    [Title]                            NVARCHAR (125)     NULL,
    [Department]                       NVARCHAR (100)     NULL,
    [AssistantName]                    NVARCHAR (50)     NULL,
    [LeadSource]                       NVARCHAR (50)     NULL,
    [Birthdate]                        DATE             NULL,
    [Description]                      NVARCHAR (2000)   NULL,
    [OwnerId]                          char (18)     NULL,
    [HasOptedOutOfEmail]               VARCHAR (10)     NULL,
    [DoNotCall]                        VARCHAR (10)     NULL,
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
    [Jigsaw]                           NVARCHAR (100)    NULL,
    [JigsawContactId]                  NVARCHAR (100)    NULL,
    [gvp__Division__c]                 char (18)     NULL,
    [gvp__HomeEmail__c]                NVARCHAR (100)    NULL,
    [gvp__Level__c]                    NVARCHAR (20)     NULL,
    [gvp__Role__c]                     NVARCHAR (200)     NULL,
    [gvp__Spouse__c]                   NVARCHAR (100)    NULL,
    [gvp__WorkEmail__c]                NVARCHAR (100)    NULL,
    [gvp__WorkPhone__c]                VARCHAR (50)     NULL,
    [gvp__Salesman_Key__c]             VARCHAR (50)     NULL,
    [gvp__Salesman_Number__c]          VARCHAR (20)     NULL,
    [gvp__Age_Calculated__c]           DECIMAL (6, 2)   NULL,
    [gvp__Attributes__c]               VARCHAR (100)     NULL,
    [gvp__Company__c]                  NVARCHAR(70)     NULL,
    [gvp__Contact_Method__c]           NVARCHAR (30)     NULL,
    [gvp__Customer_Key__c]             VARCHAR (50)     NULL,
    [gvp__Email_Key__c]                VARCHAR (100)     NULL,
    [gvp__Facebook_Fan__c]             VARCHAR (10)     NULL,
    [gvp__Favorite_Destination_s__c]   NVARCHAR (255)     NULL,
    [gvp__Favorite_Hotel_s__c]         NVARCHAR (255)     NULL,
    [gvp__Favorite_Product_s__c]       NVARCHAR (255)     NULL,
    [gvp__Favorite_Restaurants__c]     NVARCHAR (255)     NULL,
    [gvp__Join_Date__c]                DATE             NULL,
    [gvp__Last_Visit__c]               DATE             NULL,
    [gvp__Other_Tastes_Preferences__c] NVARCHAR (500)    NULL,
    [gvp__Referred_By__c]              char (18)     NULL,
    [gvp__Twitter_Username__c]         NVARCHAR (100)    NULL,
    [gvp__Consumer_Order_Amount__c]    MONEY            NULL,
    [gvp__Consumer_Order_Total__c]     MONEY            NULL,
    [gvp__Source_File__c]              NVARCHAR (50)     NULL,
    [gvp__Custom_1__c]                 NVARCHAR (200)    NULL,
    [gvp__Custom_2__c]                 NVARCHAR (200)    NULL,
    [gvp__Custom_3__c]                 NVARCHAR (200)    NULL,
    [gvp__Custom_4__c]                 NVARCHAR (200)    NULL,
    [gvp__Custom_5__c]                 NVARCHAR (200)    NULL,
    [gvp__Sales_Team_Division__c]      char (18)     NULL,
    [gvp__Active__c]                   VARCHAR (10)     NULL,
    CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED ([Id] ASC)
);
