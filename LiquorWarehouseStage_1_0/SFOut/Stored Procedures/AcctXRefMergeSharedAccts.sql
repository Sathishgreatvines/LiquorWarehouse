CREATE PROCEDURE SFOut.[AcctXRefMergeSharedAccts](
@SrsSchema   VARCHAR(50),
@ConnectionId VARCHAR(155) = NULL,
@WhereClause VARCHAR(255) = ''
) AS

IF OBJECT_ID('tempdb..#TempXREF') IS NOT NULL DROP TABLE #TempXREF;

BEGIN
            DECLARE @SQL NVARCHAR(MAX) = N'
            Select 
 distinct RSCUST, RawState, AccountName, AccountKey, SFID  
into #TempXREF
from SRSXREF.AccountXRef ax
where ax.RawState in (select distinct gvp__Account_Address_State__c from BevPathIn.gvp__Shared_Account__c);

WITH groups AS (
 SELECT distinct
       coalesce(an.SFID, ax.SFID, ak.SFID, ay.SFID) as gvp__Account__c
	  ,bp.id as [gvp__BevPath_Connection__c]
      ,gsa.gvp__Received_Account_Identifier__c
      ,gsa.[gvp__External_Id__c]
      ,[gvp__Account_Key__c]
      ,[gvp__Account_Key_List__c]
      ,coalesce(an.AccountName,ax.AccountName,ak.AccountName,ay.AccountName,[gvp__Account_Name__c]) as gvp__Account_Name__c
      ,[gvp__Account_Segment__c]
      ,[gvp__Classification__c]
      ,[gvp__Attribute_1__c]
      ,[gvp__Attribute_2__c]
      ,[gvp__Attribute_3__c]
      ,[gvp__Attribute_4__c]
      ,[gvp__Attribute_5__c]
      ,[gvp__Attribute_6__c]
      ,[gvp__Attribute_7__c]
      ,[gvp__Attribute_8__c]
      ,[gvp__Attribute_9__c]
      ,[gvp__Attribute_10__c]
      ,gvp__Account_Full_Address__c
      ,gvp__Account_Address_Street__c
      ,gvp__Account_Address_City__c
      ,gvp__Account_Address_State__c
      ,gvp__Account_Address_Zip_Code__c
      ,gvp__County__c
      ,[gvp__DBA__c]
      ,[gvp__Distributor_Account_Number__c]
      ,[gvp__Distributor_Rep__c]
      ,[gvp__Labels__c]
      ,gsa.[gvp__Account_MSA_Code__c]
      ,gsa.[gvp__Account_MSA_Name__c]
      ,gsa.gvp__PremiseType__c
      ,[gvp__Region__c]
      ,[gvp__Territory__c]
	   ,ROW_NUMBER() OVER (Partition by gsa.gvp__External_Id__c order by gsa.gvp__Account_Status__c asc) as RowNumber
  FROM ' +  @SrsSchema + '.[gvp__Shared_Account__c] gsa
  left join #TempXREF an on (an.RSCUST = gsa.gvp__Received_Account_Identifier__c and an.RawState = gsa.gvp__Account_Address_State__c and an.AccountName = gsa.gvp__Account_Name__c)
  left join #TempXREF ax on (ax.RSCUST = gsa.gvp__Received_Account_Identifier__c and ax.RawState = gsa.gvp__Account_Address_State__c)
  left join #TempXREF ay on (ay.AccountKey = gsa.gvp__Received_Account_Identifier__c and ay.RawState = gsa.gvp__Account_Address_State__c)
  left join #TempXREF ak on (ak.RSCUST = gsa.gvp__Received_Account_Identifier__c)
  left join gvp.gvp__BevPath_Connection__c bp on bp.' + @ConnectionId + ' = gsa.gvp__BevPath_Connection__c '
  + @WhereClause + '
)
select * from groups
  where ROWNUMBER = 1'

        DECLARE @params NVARCHAR(MAX) = N'
            @SrsSchema   VARCHAR(50),
            @ConnectionId VARCHAR(155),
			@WhereClause VARCHAR(255)';

        PRINT @SQL

        EXEC sys.sp_executesql @SQL, @params,
            @SrsSchema,
            @ConnectionId,
			@WhereClause
END

RETURN 0
