json.extract! song_user, :id, :song_id, :user_id, :created_at, :updated_at
json.url song_user_url(song_user, format: :json)
