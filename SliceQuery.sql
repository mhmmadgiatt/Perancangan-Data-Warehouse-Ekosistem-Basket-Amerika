SELECT 
    [game_id],
    [matchup_home],
    [wl_home],
    [team_id_home]
   
FROM 
    [dbnbaf].[dbo].[OLE DB Destination]
where  [wl_home] = 'W'
GROUP BY  
	[game_id],
    [matchup_home],
    [wl_home],
	[team_id_home]
    
;