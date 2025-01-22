--------------- ARTISTS TABLE ---------------

-- Drop table if exists
DROP TABLE IF EXISTS artists CASCADE;

-- Create new table
CREATE TABLE artists (
	artist_id INT NOT NULL PRIMARY KEY
	,artist_name VARCHAR NOT NULL
	,number_of_fans INT NOT NULL
	,number_of_albums INT NOT NULL
	,deezer_link VARCHAR NOT NULL
	,fan_to_album_ratio DEC NOT NULL
);

-- Display table with csv file imported data
SELECT *
FROM artists;



--------------- TRACKS DATA TABLE ---------------

-- Drop table if exists
DROP TABLE IF EXISTS tracks_data;

-- Create new table
CREATE TABLE tracks_data (
	track_id BIGINT NOT NULL
	,track_title VARCHAR NOT NULL
	,album_name VARCHAR NOT NULL
	,popularity_rank INT NOT NULL
	,duration_seconds INT NOT NULL
	,artist_id INT NOT NULL REFERENCES artists(artist_id)   -- FK
	,duration_minute_seconds TIME NOT NULL
);

-- Display table with csv file imported data
SELECT *
FROM tracks_data;