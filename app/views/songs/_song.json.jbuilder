json.extract! song, :id, :name, :year, :artist_id, :album_id, :gender_id, :duration, :punctuation, :created_at, :updated_at
json.url song_url(song, format: :json)
