﻿CREATE TABLE [GVW].[SurveyDim](
[GVWSurveySKey] int identity(1,1),
[ID] VARCHAR(18) NOT NULL,
[Name] [nvarchar](100) NULL,
[Granularity] [varchar](15) NULL,
[URL] [nvarchar](100) NULL,
[CreatedDate] [char](10) NULL,
[ModifiedDate] [char](10) NULL,
[SurveyPlanID] VARCHAR(18) NULL,
[SurveyPlanURL] [nvarchar](100) NULL,
[SurveyPlanName] [nvarchar](100) NULL,
[SurveyPlanChannel] [varchar](50) NULL,
[SurveyPlanAim] [nvarchar](500) NULL,
[SurveyPlanGoal] [nvarchar](20) NULL,
[SurveyBankID] VARCHAR(18) NULL,
[SurveyBankURL] [nvarchar](100) NULL,
[SurveyBankName] [varchar](20) NULL,
[SurveyBankCategory] [nvarchar](30) NULL,
[SurveyBankMultipleAnswers] [varchar](10) NULL,
[SurveyBankProductOnly] [varchar](20) NULL,
[SurveyBankQuestionText] [nvarchar](250) NULL,
[SurveyBankType] [nvarchar](10) NULL,
[SurveyQuestionID] VARCHAR(18) NULL,
[SurveyQuestionURL] [nvarchar](100) NULL,
[SurveyQuestionName] [varchar](20) NULL,
[SurveyQuestionFormat] [nvarchar](5) NULL,
[SurveyQuestionGroupCategory] [nvarchar](100) NULL,
[SurveyQuestionGroupNumber] [nvarchar](100) NULL,
[SurveyQuestionGroupType] [nvarchar](50) NULL,
[SurveyQuestionMultipleAnswers] [nvarchar](10) NULL,
[SurveyQuestionExternalID] [varchar](30) NULL,
[SurveyQuestionList] [nvarchar](200) NULL,
[SurveyQuestionText] [nvarchar](500) NULL,
[SurveyQuestionTargetCheckbox] [nvarchar](5) NULL,
[SurveyQuestionTargetCurrency] [nvarchar](5) NULL,
[SurveyQuestionTargetNumber] [nvarchar](15) NULL,
[SurveyQuestionTargetPercentage] [nvarchar](5) NULL,
[SurveyQuestionTargetText List] [nvarchar](20) NULL,
[SurveyQuestionTargetYesNo] [nvarchar](5) NULL,
[SurveyQuestionType] [nvarchar](10) NULL,
[ProductDimID] [varchar](37) NULL,
[SurveyProductURL] [nvarchar](100) NULL,
[SurveyProductName] [nvarchar](100) NULL,
[SurveyProductType] [nvarchar](50) NULL,
[SurveyProductSizeName] [nvarchar](10) NULL,
[SurveyProductSizeExternalID] [nvarchar](10) NULL,
[SurveyProductOwnership] [nvarchar](20) NULL,
[SurveyBankSalesDriver] [nvarchar](30) NULL,
[SurveyQuestionGroupName] [nvarchar](100) NULL,
[SurveyQuestionPoints] [nvarchar](5) NULL,
[SurveyQuestionOrder] [nvarchar](5) NULL,
[SurveyQuestionSalesDriver] [nvarchar](50) NULL,
[SalesDriverDimID] [nvarchar](50) NULL,
[SurveyPlanCustomText1] [nvarchar](5) NULL,
[SurveyPlanCustomText2] [nvarchar](30) NULL,
[SurveyPlanCustomText3] [nvarchar](5) NULL,
[SurveyPlanCustomText4] [nvarchar](50) NULL,
[SurveyPlanCustomText5] [nvarchar](5) NULL,
[SurveyQuestionClusterName] [nvarchar](50) NULL,
[SurveyQuestionClusterNumber] [nvarchar](5) NULL,
[SurveyPlanPublished] [nvarchar](5) NULL,
[SurveyPlanExternalID] [nvarchar](5) NULL,
[SurveyBankExternalID] [nvarchar](5) NULL,
[SurveyBankCustom1] [nvarchar](5) NULL,
[SurveyBankCustom2] [nvarchar](5) NULL,
[SurveyBankCustom3] [nvarchar](5) NULL,
[SurveyBankCustom4] [nvarchar](5) NULL,
[SurveyBankCustom5] [nvarchar](5) NULL,
[SurveyBankCustomFact1] [nvarchar](5) NULL,
[SurveyBankCustomFact2] [nvarchar](5) NULL,
[SurveyBankCustomFact3] [nvarchar](5) NULL,
[SurveyBankCustomFact4] [nvarchar](5) NULL,
[SurveyBankCustomFact5] [nvarchar](5) NULL,
[SurveyQuestionCustom1] [nvarchar](50) NULL,
[SurveyQuestionCustom2] [nvarchar](50) NULL,
[SurveyQuestionCustom3] [nvarchar](5) NULL,
[SurveyQuestionCustom4] [nvarchar](5) NULL,
[SurveyQuestionCustom5] [nvarchar](50) NULL,
[SurveyQuestionCustomFact1] [nvarchar](5) NULL,
[SurveyQuestionCustomFact2] [nvarchar](5) NULL,
[SurveyQuestionCustomFact3] [nvarchar](5) NULL,
[SurveyQuestionCustomFact4] [nvarchar](5) NULL,
[SurveyQuestionCustomFact5] [nvarchar](5) NULL,
[SurveyProductExternalID] [nvarchar](50) NULL,
[CompetitorDimID] VARCHAR(18) NULL,
[SurveyQuestionConditional] [nvarchar](5) NULL,
[SurveyQuestionReferenceTo] [nvarchar](5) NULL,
[SurveyBankReferenceTo] [nvarchar](5) NULL,
GVWCreatedDate      Datetime    default getdate() NOT NULL,
GVWLastModifiedDate Datetime    default getdate() NOT NULL,
GVWSourceID  INT default (-1),
GVWDeleted BIT NULL DEFAULT '0'
CONSTRAINT [PK_SurveyDim] PRIMARY KEY ([GVWSurveySKey])
); 
