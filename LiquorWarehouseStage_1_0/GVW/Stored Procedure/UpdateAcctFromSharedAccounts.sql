CREATE PROCEDURE [GVW].[UpdateAcctFromSharedAccounts]

AS
	IF OBJECT_ID('tempdb..#SharedAccountTemp') IS NOT NULL DROP TABLE #SharedAccountTemp;

WITH cte AS
(
     SELECT  gvp__Account__c as Id,
	         gvp__Classification__c as BevPathClassification,
			 bc.Name as BevPathConnectionName,
			 gvp__Attribute_1__c as BevPathAttribute1,					
			 gvp__Attribute_2__c as BevPathAttribute2,					
			 gvp__Attribute_3__c as BevPathAttribute3,
			 gvp__Attribute_4__c as BevPathAttribute4,
			 gvp__Attribute_5__c as BevPathAttribute5,
			 gvp__Attribute_6__c as BevPathAttribute6,
			 gvp__Attribute_7__c as BevPathAttribute7,
			 gvp__Attribute_8__c as BevPathAttribute8,
			 gvp__Attribute_9__c as BevPathAttribute9,
			 gvp__Attribute_10__c as BevPathAttribute10,
			 gvp__Account_Segment__c as BevPathAccountSegment,
			 ROW_NUMBER() OVER
         (
             PARTITION BY [gvp__External_Id__c]
			 ORDER BY CONVERT(datetime, DateAdded, 101) DESC
         ) AS RowNo
     FROM gvp.gvp__Shared_Account__c gsa
	 join gvp.gvp__BevPath_Connection__c bc on bc.id = gsa.gvp__BevPath_Connection__c
	 where gsa.gvp__Account__c != ''
)
SELECT * INTO #SharedAccountTemp
FROM cte
WHERE RowNo = 1
 
 Update  au 
 set
  au.BevPathClassification = sat.BevPathClassification,
  au.BevPathConnectionName = sat.BevPathConnectionName, 
  au.BevPathAttribute1 = sat.BevPathAttribute1,
  au.BevPathAttribute2 = sat.BevPathAttribute2,
  au.BevPathAttribute3 = sat.BevPathAttribute3,
  au.BevPathAttribute4 = sat.BevPathAttribute4,
  au.BevPathAttribute5 = sat.BevPathAttribute5,
  au.BevPathAttribute6 = sat.BevPathAttribute6,
  au.BevPathAttribute7 = sat.BevPathAttribute7,
  au.BevPathAttribute8 = sat.BevPathAttribute8,
  au.BevPathAttribute9 = sat.BevPathAttribute9,
  au.BevPathAttribute10 = sat.BevPathAttribute10,
  au.BevPathAccountSegment = sat.BevPathAccountSegment
from gvw.AcctUnivDim au
join #SharedAccountTemp sat on sat.Id =  au.ID
select @@ROWCOUNT

