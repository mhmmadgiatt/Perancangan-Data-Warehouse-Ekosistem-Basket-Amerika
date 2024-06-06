SELECT  
      [team_id_home]
	  ,[city]
      ,[arena]
	  ,[arenacapacity]
      
	  FROM 
    [dbnbaf].[dbo].[OLE DB Destination]
     WHERE TRY_CAST([arenacapacity] AS FLOAT) >= 20000
GROUP BY  
	 [team_id_home]
	  ,[city]
      ,[arena]
	  ,[arenacapacity]   
;