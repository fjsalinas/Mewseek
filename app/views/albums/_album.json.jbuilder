json.extract! album, :id, :name, :year, :artist_id, :gender_id, :created_at, :updated_at
json.url album_url(album, format: :json)
