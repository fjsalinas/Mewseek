json.extract! playlist_user, :id, :playlist_id, :user_id, :created_at, :updated_at
json.url playlist_user_url(playlist_user, format: :json)
