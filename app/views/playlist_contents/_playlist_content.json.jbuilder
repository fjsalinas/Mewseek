json.extract! playlist_content, :id, :name, :song_id, :user_id, :created_at, :updated_at
json.url playlist_content_url(playlist_content, format: :json)
