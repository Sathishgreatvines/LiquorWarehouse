
GO

/****** Object:  StoredProcedure [dbo].[PopulateFiscalDateTable]    Script Date: 10/14/2021 5:39:21 AM ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER OFF
GO


USE [aaHeidi_LiquorWarehouseStage_1_03_05]
go

CREATE OR ALTER       PROCEDURE [dbo].[PopulateFiscalDateTable] @fiscalmonthadjust int, @start varchar(10), @end varchar(10), @country char(3)
as
begin
  -- Convert parameters to dates
  declare @fiscalyearstartdate date, @startdate date, @enddate date
  set @fiscalyearstartdate = dateadd(MM, @fiscalmonthadjust, @start)
  set @startdate = convert(date, @start)
  set @enddate = convert(date, @end)


  -- Get the days offset
  declare @dayoffset int, @weekoffset int, @dayoffsetEnd int
  set @dayoffset = datediff(DD, convert(date, '1/1/' + convert(varchar, year(@fiscalyearstartdate))), @fiscalyearstartdate)
  set @dayoffsetend = datediff(DD, @fiscalyearstartdate, convert(date, '12/31/' + convert(varchar, year(@fiscalyearstartdate)))) + 1


  -- Delete dates that already exist in the FiscalDate table
  delete from FiscalDate where FiscalDate between @startdate and @enddate

  insert into FiscalDate (FiscalDate, ReportDate, DayNumberOfYear, DayNumberOfQuarter, DayNumberOfMonth, DayNumberOfWeek, WeekdaySN, WeekdayLN, WeekNumberOfYear,
  MonthSN, MonthLN, MonthNumberOfYear, MonthNumberOfQuarter, QuarterNumberOfYear,
    [Year], CalendarYearMonth, [WeekDay], Holiday, HolidayName, HolidayNameEnglish, DateNumber, FiscalDateNumber)
    select 
		CD.CalendarDate as FiscalDate, 
		FD.CalendarDate as ReportDate, 
		case when cd.daynumberofyear > @dayoffset  then cd.DayNumberOfYear -  @dayoffset
		     else cd.daynumberofyear + @dayoffsetend
			 End 			 as DayNumberOFYear,
		
		FD.DayNumberOfQuarter as DayNumberOfQuarter, 
	    CD.DayNumberOfMonth, 
		CD.DayNumberOfWeek, 
		CD.WeekdaySN, 
		CD.WeekdayLN, 
		FD.WeekNumberOfYear - FD.WeekNumberOfYear + CD.WeekNumberOfYear as WeekNumberOfYear,
		cast(SUBSTRING(DATENAME(month, CD.CALENDARDATE), 1, 3) as char(3))  AS MonthSN ,
				DATENAME(month, CD.CALENDARDATE) AS MonthLN, 
			
		FOM.FiscalValueYear as MonthNumberOfYear,
		FOM.FiscalValueQuarter as  MonthNumberOfQuarter, 
		FOQ.FiscalValueYear as QuarterNumberOfYear,
		Case when  Cast(datepart(month, CD.CalendarDate) as int)  >  @fiscalmonthadjust
		      then CD.[YEAR]
			  ELSE CD.YEAR -1
			
			END, 
	  	   
		CD.YearMonth,
		CD.WeekDay,
      case when h.HolidayName is null then 0 else 1 end,
      h.HolidayName,
      h.HolidayNameEnglish,
      CD.DateNumber,
	  FD.DateNumber as FiscalDateNumber 
    from Global..CalendarDate CD
		  inner join Global..CalendarDate FD on dateadd(dd, datediff(DD,@startdate, dateadd(MM, @fiscalmonthadjust, @start)),CD.CalendarDate) = FD.CalendarDate 
		  
		  inner join[dbo].[FiscalOffsets]  FOM on CD.MonthNumberOfYEAR = FOM.[Month] 
								and FOM.OffsetType = 'MONTHYEAR'
								and FOM.Offset = @fiscalmonthadjust

		  inner Join [dbo].[FiscalOffsets]  FOQ on  CD.MonthNumberOfYEAR = FOQ.[Month]
		         and FOQ.OffsetType = 'QUARTER'
		         and FOQ.Offset = @fiscalMonthAdjust

				
				 
      left outer join Global..Holiday h on CD.CalendarDate = h.CalendarDate and h.Country = @country
    where CD.CalendarDate between @startdate and @enddate
    order by FiscalDate
end
GO


