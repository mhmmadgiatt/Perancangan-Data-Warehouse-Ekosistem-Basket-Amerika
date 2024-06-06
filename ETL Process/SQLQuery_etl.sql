WITH OfficialCount AS (
    SELECT official_id, COUNT(*) AS count
    FROM [dbnbaf].[dbo].[OLE DB Destination]
    GROUP BY official_id
),
MostCommonOfficial AS (
    SELECT TOP 1 official_id
    FROM OfficialCount
    ORDER BY count DESC
)
SELECT 
    
    [game_id],
    [matchup_home],
    [wl_home],
    [team_id_home],
    [official_id],
    [arena],
    [city],
    [arenacapacity],
    [person_id],
    [player_name],
    [is_active],
    CASE 
        WHEN wl_home = 'W' THEN 1 ELSE 0 END +
        CASE 
        WHEN TRY_CAST(arenacapacity AS float) > 20000 THEN 1 ELSE 0 END +
        CASE 
        WHEN is_active = 1 THEN 1 ELSE 0 END +
        CASE 
        WHEN official_id = (SELECT official_id FROM MostCommonOfficial) THEN 1 ELSE 0 END AS nba_inc
FROM 
    [dbnbaf].[dbo].[OLE DB Destination];
