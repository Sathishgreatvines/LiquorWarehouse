﻿
GO

/****** Object:  StoredProcedure [dbo].[PopulateFiscalDateTable]    Script Date: 10/13/2021 2:54:57 PM ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[PopulateFiscalDateTable] @fiscalmonthadjust int, @start varchar(10), @end varchar(10), @country char(3)
as
begin
  -- Convert parameters to dates
  declare @fiscalyearstartdate date, @startdate date, @enddate date
  set @fiscalyearstartdate = dateadd(MM, @fiscalmonthadjust, @start)
  set @startdate = convert(date, @start)
  set @enddate = convert(date, @end)

  -- Get the days offset
  declare @dayoffset int, @weekoffset int
  set @dayoffset = datediff(DD, convert(date, '1/1/' + convert(varchar, year(@fiscalyearstartdate)+1)), @fiscalyearstartdate)

  -- Delete dates that already exist in the FiscalDate table
  delete from FiscalDate where FiscalDate between @startdate and @enddate

  insert into FiscalDate (FiscalDate, ReportDate, DayNumberOfYear, DayNumberOfQuarter, DayNumberOfMonth, DayNumberOfWeek, WeekdaySN, WeekdayLN, WeekNumberOfYear, MonthSN, MonthLN, MonthNumberOfYear, MonthNumberOfQuarter, QuarterNumberOfYear,
    [Year], CalendarYearMonth, [WeekDay], Holiday, HolidayName, HolidayNameEnglish, DateNumber, FiscalDateNumber)
    select 
    	CD.CalendarDate as FiscalDate,
		FD.CalendarDate as ReportDate,
      FD.DayNumberOfYear as DayNumberOfYear,
	    FD.DayNumberOfQuarter as DayNumberOfQuarter,
	    CD.DayNumberOfMonth,
      CD.DayNumberOfWeek,
      CD.WeekdaySN, 
      CD.WeekdayLN,
      FD.WeekNumberOfYear as WeekNumberOfYear,
	  format (DATEADD(MONTH,-1 * @fiscalmonthadjust,fd.CalendarDate), 'MMM', 'en-US') as MonthSN,
	  datename (month, (DATEADD(MONTH,-1 * @fiscalmonthadjust,fd.CalendarDate))) as MonthLN,
      FD.MonthNumberOfYear as MonthNumberOfYear,
      FD.MonthNumberOfQuarter MonthNumberOfQuarter, 
      FD.QuarterNumberOfYear,
      FD.[Year],
      CD.YearMonth,
	    CD.WeekDay,
      case when h.HolidayName is null then 0 else 1 end,
      h.HolidayName,
      h.HolidayNameEnglish,
      CD.DateNumber,
	  FD.DateNumber as FiscalDateNumber

    from Global..CalendarDate CD
		  inner join Global..CalendarDate FD on dateadd(dd, datediff(DD,@startdate, dateadd(MM, @fiscalmonthadjust, @start)),CD.CalendarDate) = FD.CalendarDate 

      left outer join Global..Holiday h on CD.CalendarDate = h.CalendarDate and h.Country = @country
    where CD.CalendarDate between @startdate and @enddate
    order by FiscalDate
end
GO


