CREATE  PROCEDURE [dbo].[GetClientSRSValidationDate] @clientname varchar(100), @environmentname varchar(100)    
AS    
BEGIN    
   if charindex(';', @clientname, 0) > 0    
    or charindex(';', @environmentname, 0) > 0    
  return(1);    
    
  -- Snaplogic errors if nocount is off    
  set nocount on    
    
  -- Parameter error handling    
  if not exists(select ClientID from Client where ClientName = @clientname)    
    return(1);    
  if not exists(select EnvironmentID from Environment where EnvironmentName =@environmentname or @environmentname ='All' or @environmentname ='Default')    
   return(1);    
      
    select e.EnvironmentName, p.ParameterID, p.ParameterName, cp.ParameterValue    
    from Client c    
      inner join ClientParameter cp on c.ClientID = cp.ClientID    
      inner join Parameter p on cp.ParameterID = p.ParameterID    
   left join Environment e on e.EnvironmentID = cp.EnvironmentID    
    where c.ClientName = @clientname and e.EnvironmentName = @environmentname and ParameterName='ClientStartDate'    
        
END 