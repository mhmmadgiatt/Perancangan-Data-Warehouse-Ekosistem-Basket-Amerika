SELECT 
      official_id, COUNT(*) AS JumlahWasitMain
      
	  
  FROM [dbnbaf].[dbo].[OLE DB Destination]
  GROUP BY ROLLUP(
      [official_id]);
      


