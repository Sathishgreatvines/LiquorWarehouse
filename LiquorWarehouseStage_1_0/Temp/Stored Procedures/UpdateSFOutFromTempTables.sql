﻿create procedure [Temp].[UpdateSFOutFromTempTables] @tablename varchar(40) as
begin
  declare @setstatement varchar(7800)
  declare @sql varchar(8000)
  declare @i int

  /* Create the 'set' clause of the update statement */
  
  -- Create a row for each column that sets it equal to the temp table version of itself
  select 
    cast(case 
      when c.name not like '9%' then 'g.' + c.name + '=t.' + c.name 
      else 'g.[' + c.name + ']=t.[' + c.name + ']'
    end as varchar(8000)) as columnupdate 
  into #gvpTempTable
  from sys.columns c 
    inner join sys.tables t on t.object_id = c.object_id 
    inner join sys.schemas s on s.schema_id = t.schema_id
  where t.name = @tablename
    and s.name = 'GVP'
    and c.name <> 'ID'
    and c.name <> 'IdentityField'

  -- Loop through the list of columns 100 at a time and update them.  Unfortunately we have to do this in pieces because of the number of columns in some tables
  while (select count(1) from #gvpTempTable) > 0
  begin
    -- combine the individual rows into one string
    select @setstatement = coalesce(@setstatement + ',','') + columnupdate 
    from (select top 100 columnupdate from #gvpTempTable) as setstatement

    --print @setstatement

    -- Create the update statement
    set @sql = 'update g set ' + @setstatement + ' 
      from gvp.' + @tablename + ' g 
        inner join temp.SFOut' + @tablename + ' t on g.ID = t.ID'

    --print @sql
    exec (@sql)

    -- Delete the columns that we just updated from the temp table so we don't update them again, reset the setstatement variable
    delete from #gvpTempTable where columnupdate in (select top 100 columnupdate from #gvpTempTable)
    set @setstatement = null

  end

  drop table #gvpTempTable

end