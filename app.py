# Import libraries
import psycopg2
import json
from pydantic import BaseModel
from flask import Flask, jsonify
from itertools import chain

app = Flask(__name__)

class Artist(BaseModel):
    artist_id: int
    artist_name: str
    number_of_fans: int
    number_of_albums: int

# Make postgres connection
def get_cursor():
    try:
        connection = psycopg2.connect(
                        user="postgres",
                        password="5454",
                        host="127.0.0.1",
                        port="5432",
                        database="spotify_db"
                    )
        cursor = connection.cursor()
        return cursor
    except Exception as e:
        print("failed to connect to postgres: ", e)

# Get artist profile API
@app.route('/artist/<name>')
def artist_profile(name):
    cursor = get_cursor()
    cursor.execute("select artist_id, artist_name, number_of_fans, number_of_albums from artists where artist_name = '{}'".format(name))
    result = cursor.fetchone()
    artist = Artist(
        artist_id=result[0],
        artist_name=result[1],
        number_of_fans=result[2],
        number_of_albums=result[3]
    )
    return json.dumps(artist.model_dump()), 200, {"Content-Type": "application/json"}

# Get artist tracks API
@app.route('/tracks/<artist_name>')
def artist_tracks(artist_name):
    cursor = get_cursor()
    cursor.execute("select track_title from tracks join artists on tracks.artist_id = artists.artist_id where artists.artist_name = '{}'".format(artist_name))
    result = cursor.fetchall()
    merged_result = list(chain(*result))
    return jsonify({'tracks':merged_result})

# Get top artist by fan count
@app.route('/top/artist/<count>')
def artist_popularity(count):
    cursor = get_cursor()
    cursor.execute("SELECT artist_name FROM artists ORDER BY number_of_fans DESC LIMIT {}".format(count))
    result = cursor.fetchall()
    merged_result = list(chain(*result))
    return jsonify({'top artist by fan count':merged_result})

# Get top album by popularity rank
@app.route('/top/album/<count>')
def album_popularity(count):
    cursor = get_cursor()
    cursor.execute("SELECT album_name FROM tracks GROUP BY album_name ORDER BY sum(popularity_rank) DESC LIMIT {}".format(count))
    result = cursor.fetchall()
    merged_result = list(chain(*result))
    return jsonify({'top album by popularity rank':merged_result})

# Get top track by popularity rank
@app.route('/top/track/<count>')
def track_popularity(count):
    cursor = get_cursor()
    cursor.execute("SELECT track_title FROM tracks ORDER BY popularity_rank DESC LIMIT {}".format(count))
    result = cursor.fetchall()
    merged_result = list(chain(*result))
    return jsonify({'top track by popularity rank':merged_result})