SELECT 
      [team_id_home]
	  ,count(team_id_home) as JumlahMain
      
	  
  FROM [dbnbaf].[dbo].[OLE DB Destination]
  GROUP BY ROLLUP(
      [team_id_home]);
      
