-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE "artists" (
    "artist_id" int   NOT NULL,
    "artist_name" varchar   NOT NULL,
    "number_of_fans" int   NOT NULL,
    "number_of_albums" int   NOT NULL,
    "deezer_link" varchar   NOT NULL,
    "fan_to_album_ratio" dec   NOT NULL,
    CONSTRAINT "pk_artists" PRIMARY KEY (
        "artist_id"
     )
);

CREATE TABLE "tracks" (
    "entry_key" int   NOT NULL,
    "track_id" bigint   NOT NULL,
    "track_title" varchar   NOT NULL,
    "album_name" varchar   NOT NULL,
    "popularity_rank" int   NOT NULL,
    "duration_seconds" int   NOT NULL,
    "artist_id" int   NOT NULL,
    "duration_minute_seconds" time   NOT NULL,
    CONSTRAINT "pk_tracks" PRIMARY KEY (
        "entry_key"
     )
);

ALTER TABLE "tracks" ADD CONSTRAINT "fk_tracks_artist_id" FOREIGN KEY("artist_id")
REFERENCES "artists" ("artist_id");

