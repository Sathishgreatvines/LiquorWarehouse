CREATE PROCEDURE [dbo].[PopulateFiscalDateTable] @fiscalmonthadjust int, @start varchar(10), @end varchar(10), @country char(3)
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
  delete from FiscalDate where FiscalDate between @startdate and @enddate;
--*****************************************************************

--Drop table #calendarDates;
--drop table #FiscalDates ;
--drop table #dateMapper;

---  Get all the dates on the Calendar
SELECT *
    INTO #CalendarDates
	FROM Global..CalendarDate 
    WHERE CalendarDate BETWEEN  @startdate and @ENDDATE ;

---- Get all the dates on the  calendar starting with the first fiscal Month offset
SELECT CalendarDate as FiscalDate,
        DayNumberOfMonth as FiscalDayNumberOfMonth ,
		MonthNumberOfYEAR as FiscalMonthNumberOfYEAR,
		DayNumberOfWeek as FiscalDayNumberOfWeek,
		DayNumberOfYear as FiscalDayNumberOfYear,
		WeekdaySN as FiscalWeekdaySN,
		WeekdayLN as FiscalWeekdayLN  

    INTO #FiscalDates
	FROM Global..CalendarDate FD
	 WHERE CalendarDate BETWEEN  @startdate and @ENDDATE ;

-- Join the Calender and Fiscal dates into one table and adjust the fiscal year.

SELECT FD.*, DM.*
	INTO #DateMapper 
FROM #calendarDates DM
	FULL OUTER JOIN #fiscalDates FD on calendarDate = DateAdd(yyyy, +1, DateAdd(m, -@fiscalmonthadjust,FiscalDate))  -- This is to align the offset dates 
	 WHERE CalendarDate BETWEEN  @startdate and @ENDDATE ;

  
--------------------------------------------------------------------------------------------------------
  ----FINAL Stage
--------------------------------------------------------------------------------------------------------
INSERT INTO FiscalDate (FiscalDate, ReportDate, DayNumberOfYear, DayNumberOfQuarter, DayNumberOfMonth, DayNumberOfWeek, WeekdaySN, WeekdayLN, WeekNumberOfYear,
		MonthSN, MonthLN, MonthNumberOfYear, MonthNumberOfQuarter, QuarterNumberOfYear,
		[Year], CalendarYearMonth, [WeekDay], Holiday, HolidayName, HolidayNameEnglish, DateNumber, FiscalDateNumber)
    
SELECT
	COALESCE(DM.FiscalDate, '1900-01-01') as FiscalDate,
	DM.calendarDate as ReportDate,
	DM.DayNumberOfyear,
	DM.DayNumberOfQuarter as DayNumberOfQuarter, 
	COALESCE(DM.FiscalDayNumberOfMonth, 99), 
	COALESCE(DM.FiscalDayNumberOfWeek,9), 
	COALESCE(DM.FiscalWeekdaySN, 'NA'),
	COALESCE(DM.FiscalWeekdayLN, 'NA'),
	DM.WeekNumberOfYear as WeekNumberOfYear, 
	COALESCE(cast(SUBSTRING(DATENAME(month, DM.FiscalDATE), 1, 3) as char(3)), 'NA')  AS MonthSN ,    
	COALESCE(DATENAME(month, DM.FiscalDATE), 'NA') AS MonthLN, 
	FOM.FiscalValueYear as MonthNumberOfYear,  
	FOM.FiscalValueQuarter as  MonthNumberOfQuarter, 
	FOQ.FiscalValueYear as QuarterNumberOfYear,  
	DM.[YEAR],
	DM.YearMonth,
	DM.WeekDay,
    CASE WHEN h.HolidayName IS NULL THEN 0 ELSE 1 END,
    h.HolidayName,
    h.HolidayNameEnglish,
    DM.DateNumber ,
    DM.DateNumber as FiscalDateNumber 
	
	
    FROM #DateMapper DM 
	  	  inner join Global.[dbo].[FiscalOffsets]  FOM on FiscalMonthNumberOfYEAR = FOM.[Month] 
								and FOM.OffsetType = 'MONTHYEAR'
								and FOM.Offset = @fiscalmonthadjust

		  inner Join Global.[dbo].[FiscalOffsets]  FOQ on  FiscalMonthNumberOfYEAR = FOQ.[Month]
		         and FOQ.OffsetType = 'QUARTER'
		         and FOQ.Offset = @fiscalMonthAdjust

				
				 
      left outer join Global..Holiday h on DM.CalendarDate = h.CalendarDate and h.Country = @country
    WHERE DM.FiscalDate between @startdate and @enddate
	ORDER BY reportDate
END
GO

