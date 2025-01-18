---------- JOIN THE TWO TABLES TOGETHER ----------
SELECT a.artist_id
	,a.artist_name
	,a.number_of_fans
	,a.number_of_albums
	,a.fan_to_album_ratio
	,a.deezer_link
	,t.track_id
	,t.track_title
	,t.album_name
	,t.popularity_rank
	,t.duration_seconds
	,t.duration_minute_seconds
FROM artists AS a
LEFT JOIN tracks_data AS t ON a.artist_id = t.artist_id;



---------- COUNT NUMBER OF TRACKS BY ARTIST ----------
SELECT 
    a.artist_id
    ,a.artist_name
    ,COUNT(t.track_id) AS track_count
FROM artists AS a
LEFT JOIN tracks_data AS t ON a.artist_id = t.artist_id
GROUP BY a.artist_id, a.artist_name
ORDER BY track_count DESC;



---------- DETERMINE THE TOP 5 ARTISTS BY THE FAN TO ALBUM RATIO ----------
SELECT 
    artist_id
    ,artist_name
    ,number_of_fans
    ,number_of_albums
    ,fan_to_album_ratio
FROM artists
ORDER BY fan_to_album_ratio DESC
LIMIT 5;



---------- DETERMINE THE TOP 10 ARTISTS THAT HAVE THE MOST FANS ----------
SELECT 
    artist_id
    ,artist_name
    ,number_of_fans
FROM artists
ORDER BY number_of_fans DESC
LIMIT 10;



---------- DETERMINE THE TOP 10 ALBUMS BY POPULARITY RANK ----------
SELECT 
    t.album_name
	,t.track_title
    ,a.artist_name
    ,SUM(t.popularity_rank) AS total_popularity
FROM tracks_data AS t
JOIN artists AS a ON t.artist_id = a.artist_id
GROUP BY t.album_name, t.track_title, a.artist_name
ORDER BY total_popularity DESC
LIMIT 10;