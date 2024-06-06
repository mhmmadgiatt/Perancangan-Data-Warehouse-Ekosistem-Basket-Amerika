SELECT   
      [game_id]
      ,[wl_home]
      ,[team_id_home]
      ,[person_id]
      ,[player_name]
      ,[is_active]
  FROM [dbnbaf].[dbo].[OLE DB Destination]
  WHERE [wl_home] = 'W' AND [is_active] = 1
  GROUP BY
		[game_id]
      ,[wl_home]
      ,[team_id_home]
      ,[person_id]
      ,[player_name]
      ,[is_active];
  

