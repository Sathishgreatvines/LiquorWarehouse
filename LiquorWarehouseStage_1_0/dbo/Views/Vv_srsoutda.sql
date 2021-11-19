Create   view [dbo].[Vw_srsdw_outda]
WITH SCHEMABINDING
as
With gvpt as
(
Select Distinct
 Acc.gvp__Account_Key__c,
AccDm.ActiveIndicator 
 From gvp.account Acc
 join [GVW].[AcctUnivDim] AccDm
 on Acc.Id = AccDm.ID
 )
select distinct 
	o.[DISTID]
	,concat(o.DISTID,o.ROCUST) as ID
	,concat(o.DISTID,o.ROCUST) as XRefAcctKey
	,concat(o.DISTID ,o.ROCUST,'_1') as OUTDAKey
	,o.[RECORDTYPE]
	,o.VIPSRS
	,o.[ROCUST]
	,o.[RODBA]
	,o.[ROLNAM]
	,o.[ROADDR1]
	,o.[ROADDR2]
	,o.[ROCITY]
	,o.[ROSTATE]
	,o.[ROZIP9]
	,o.[ROCTRY]
	,o.[ROPHONE]
	,o.[ROCHN]
	,c.[DESC] as ChainName
	,o.[ROCHN2]
	,c2.[DESC] as Chain2Name
	,o.[ROCOT]
	,roc.[DESC] as ClassofTrade
	,o.[ROFWN]
	,o.[ROCSTS]
	,CSTS.[DESC] as ChainStatus
	,o.[RODISP]
	,o.[ROETHN]
	,ETHN.[DESC] as PatronEthnicity
	,o.[ROIVOL]
   ,o.[ROLIFE]
	,LIFE.[DESC] as PatronLifestyle
	,o.[ROOCC]
	,OCC.[DESC] as PatronOccupation
	,o.[ROPAGE]
	,[PAGE].[DESC] as PatronAge
	,o.[ROPTYPE]
	,PTYPE.[DESC] as PackageType
	,o.[ROWMNT]
	,o.[ROSMVT]
	,o.[ROMMVT]
	,o.[ROSELL]
	,SELL.[DESC] as SellType
	,o.[ROSM1]
	,slm1.SMNAME as DistSalesman1
	,o.[ROSM2]
	,slm2.SMNAME as DistSalesman2
	,o.[ROSTORE]
	,o.[ROSTS]
	,STS.[DESC] as OutletStatus
	,o.[TERR01]
	,o.[TERR02]
	,o.[TERR03]
	,o.[TERR04]
	,o.[TERR05]
	,o.[TERR06]
	,o.[TERR07]
	,o.[TERR08]
	,o.[TERR09]
	,o.[TERR10]
	,o.[TERR11]
	,o.[TERR12]
	,o.[TERR13]
	,o.[TERR14]
	,o.[TERR15]
	,o.[TERR16]
	,o.[TERR17]
	,o.[TERR18]
	,o.[TERR19]
	,o.[TERR20]
	,o.[TERR21]
	,o.[TERR22]
	,o.[TERR23]
	,o.[TERR24]
	,o.[TERR25]
	,o.[TERR26]
	,o.[TERR27]
	,o.[TERR28]
	,o.[TERR29]
	,o.[TERR30]
	,o.[TDOUTCD]
	,o.[TDMGROUP]
	,o.[VIPID]
	,o.[VIPMALT]
	,o.[ROBUYER]
	,o.[ROLICTYPE]
	,o.[FILENAME]
	,LICTYPE.[DESC] as LicenseType
	,o.[ROWHSE]
	,o.[ROPARENT]
	,o.[ROLICENSE]
	,o.[ROOPEN]
	,o.[ROCLOSED]
	,o.[ROSEASOP]
	,o.[ROSEASCL]
	,o.[ROPLANO]
	,gvp.ActiveIndicator as ActiveAccounts
	,gvp.Gvp__Account_Key__c
	,FNM.FIELDNAME AS SRSVALUEFIELD
FROM [SRSDW].[OUTDA] o
left join srsdw.SRSCHAIN c 
	on c.CHAIN = o.ROCHN
left join srsdw.SRSCHAIN c2 
	on c2.CHAIN = o.ROCHN2
left join srsdw.SRSVALUE ROC 
	on ROC.FIELD = 'ROCOT' 
	and ROC.code = o.ROCOT
left join srsdw.SRSVALUE csts 
	on csts.FIELD = 'ROCSTS' 
	and csts.code = o.ROCSTS
left join srsdw.SRSVALUE ETHN 
	on ETHN.FIELD = 'ROETHN' 
	and ETHN.code = o.ROETHN
left join srsdw.SRSVALUE LICTYPE 
	on LICTYPE.FIELD = 'ROLICTYPE' 
	and LICTYPE.code = o.ROLICTYPE
left join srsdw.SRSVALUE LIFE 
	on LIFE.FIELD = 'ROLIFE' 
	and LIFE.code = o.ROLIFE
left join srsdw.SRSVALUE OCC 
	on OCC.FIELD = 'ROOCC' 
	and OCC.code = o.ROOCC
left join srsdw.SRSVALUE [PAGE] 
	on [PAGE].FIELD = 'ROPAGE' 
	and [PAGE].code = o.ROPAGE
left join srsdw.SRSVALUE PTYPE 
	on PTYPE.FIELD = 'ROPTYPE' 
	and PTYPE.code = o.ROPTYPE
left join srsdw.SRSVALUE SELL 
	on SELL.FIELD = 'ROSELL' 
	and SELL.code = o.ROSELL
left join srsdw.SRSVALUE STS 
	on STS.FIELD = 'ROSTS' 
	and STS.code = o.ROSTS
left join srsdw.SLMDA slm1 
	on slm1.SMCODE = o.ROSM1 
	and slm1.SMDIST =o.ROPARENT
left join srsdw.slmda slm2 
	on slm2.SMCODE = o.ROSM2 
	and slm2.SMDIST =o.ROPARENT
Left join gvpt gvp
	on o.VIPID = gvp.gvp__Account_Key__c
AND gvp.ActiveIndicator  = 'yes'
LEFT JOIN SRSDW.SRSVALUE FNM
ON  FNM.CODE = o.ROCOT
