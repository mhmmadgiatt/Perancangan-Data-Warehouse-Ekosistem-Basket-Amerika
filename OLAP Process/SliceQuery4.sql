SELECT
    [person_id]
      ,[player_name]
      ,[is_active]
   
FROM 
    [dbnbaf].[dbo].[OLE DB Destination]
where  [is_active] = 0
GROUP BY  
	[person_id]
      ,[player_name]
      ,[is_active]
    
;