---number of appearances per artist 
SELECT 
artists,
COUNT(artists) AS numberofappearances, 
FROM `dataverse-392904.Spotify_data_set_2018.Spotify` 
GROUP BY
1
ORDER BY
2 DESC

---artists in the Top 100 with 'Lil' in their name, or with 'DJ' in their name
SELECT
    'Lil' AS Type, 
     COUNT(DISTINCT artists) AS numberOfArtist
     FROM 
     `dataverse-392904.Spotify_data_set_2018.Spotify` 
   WHERE 
     UPPER(artists) LIKE '%LIL%'
   GROUP BY
      1

       UNION ALL


    SELECT
     'Dj' AS Type,
     COUNT(DISTINCT artists) AS numberOfArtist
     FROM
     `dataverse-392904.Spotify_data_set_2018.Spotify`
    WHERE
     UPPER(artists) LIKE '%DJ%'
    GROUP BY 
       1
